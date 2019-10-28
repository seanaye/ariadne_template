"""import and define schem execution"""
from ariadne import load_schema_from_path
from ariadne import make_executable_schema
from resolvers.Query import query

type_defs = load_schema_from_path('type_defs/')

schema = make_executable_schema(
    type_defs,
    [
        query
    ]
)
