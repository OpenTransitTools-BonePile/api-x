# coding: utf-8

"""
"""

import sys
from setuptools import setup, find_packages

NAME = "json-validate"
VERSION = "1.0.0"
REQUIRES = ["jsonschema"]

setup(
    name=NAME,
    version=VERSION,
    description="Simple API",
    author_email="",
    url="",
    keywords=["Swagger", "Simple API"],
    install_requires=REQUIRES,
    packages=find_packages(),
    include_package_data=True,
    long_description="""\
    A simple API to learn how to write OpenAPI Specification
    """
)
