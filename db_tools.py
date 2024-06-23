import re
import pprint

def search_headers(db_description: str) -> dict:
    table_pattern = re.compile(r'create table (\w+) \((.*?)\);', re.DOTALL)
    field_pattern = re.compile(r'\s+(\w+)\s+(\w+)(?:\(\d+\))?(.*)')

    result = dict()

    for match in table_pattern.finditer(db_description):
        table_name = match.group(1)
        fields_text = match.group(2)
        fields = list()
        for m in field_pattern.finditer(fields_text):
            try:
                if m.group(3).split()[0] == 'references':
                    fields.append('REFERENCES_' + m.group(1))
                
                else:
                    fields.append(m.group(1))
            
            except IndexError:
                fields.append(m.group(1))

            except AttributeError:
                fields.append(m.group(1))

            result[table_name] = fields

    return result

def main(db_path: str) -> dict:
    with open(db_path) as file:
        db_description = file.read()

    headers = search_headers(db_description)

    return headers

if __name__ == '__main__':
    db_path = 'example_data.sql'
    data = main(db_path)
    pprint.pprint(data)
