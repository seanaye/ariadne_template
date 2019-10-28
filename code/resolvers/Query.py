from ariadne import QueryType

query = QueryType()

@query.field('echo')
def r_echo(*_, string=None):
    return string
