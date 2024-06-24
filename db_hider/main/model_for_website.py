import torch
from transformers import DistilBertForSequenceClassification, DistilBertTokenizerFast


def classify_personal_data(input_text, model, tokenizer):
    # Tokenize the input text
    # inputs = tokenizer(input_text, padding=True, truncation=True, return_tensors="pt")
    inputs = tokenizer(input_text, padding='max_length', truncation=True, return_tensors='pt', max_length=256)
    # Make a prediction
    with torch.no_grad():
        outputs = model(**inputs)

    # Get the predicted label
    predicted_label = torch.argmax(outputs.logits, dim=1).item()
    return predicted_label

def get_classified_data(data, model, tokenizer):

    data_classified = {}
    for head, item in data.items():
        text = head.lower()
        for word in item:
            if "REFERENCES" in item:
                pass
            else:
                text += " " + word.lower()
        
        label = classify_personal_data(text, model, tokenizer)
        data_classified[head] = dict([(word, label) for word in item if "REFERENCES" not in item])

def main(data):
    output_model_dir = '/model_config'

    model_name = output_model_dir
    model = DistilBertForSequenceClassification.from_pretrained(model_name).to("cpu")
    tokenizer = DistilBertTokenizerFast.from_pretrained(model_name).to("cpu")
    labels = {0: "no data", 1:"personal data", 2: "financial data", 3:"biometrical data"}
    
    data_classified = get_classified_data(data, model, tokenizer)

    return data_classified, labels

if __name__ == "__main__":
    main()