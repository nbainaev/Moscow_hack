import re

def main(db_path: str) -> dict:
    with open(db_path) as file:
        db_description = file.read()

    table_pattern = re.compile(r'create table (\w+) \((.*?)\);', re.DOTALL)
    field_pattern = re.compile(r'\s+(\w+)\s+(\w+)(?:\(\d+\))?(.*)')

    result = dict()

    for match in table_pattern.finditer(db_description):
        table_name = match.group(1)
        fields_text = match.group(2)
        fields = [m.group(1) for m in field_pattern.finditer(fields_text)]
        result[table_name] = fields

    return result

if __name__ == '__main__':
    db_path = 'example_data.sql'
    data = main(db_path)
    print(data)
