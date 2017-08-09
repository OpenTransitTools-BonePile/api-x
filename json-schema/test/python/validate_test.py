import json
from jsonschema import validate
from jsonschema import Draft4Validator


def get_json(path):
    with open(path) as data_file:
        schema = json.load(data_file)
    return schema


def test_agencies():
    s = get_json('../../agencies.json')
    validate({"stop_id": "YO", "agency": {"id": "TRIMET", "name": "TriMet", "email": "hi"}}, s)


def test_stops():
    s = get_json('../../stops.json')
    validate({"stop_id": "YO", "agency": {"id": "TRIMET", "name": "TriMet", "email": "hi"}}, s)


def test():
    s = get_json('../../f.json')
    validate({
        "residential_address": {"street_address": "2", "name": "TriMet", "email": "hi"},
        "office_address": {"street_address": 2, "name": "TriMet", "email": "hi"}
    }, s)

test()