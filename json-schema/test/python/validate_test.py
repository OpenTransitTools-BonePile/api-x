import json
from jsonschema import validate
from jsonschema import Draft4Validator


def get_json(path):
    with open(path) as data_file:
        schema = json.load(data_file)
    return schema


s = get_json('../../agencies.json')
validate({"id": "TRIMET", "name": "TriMet", "email": 5}, s)
