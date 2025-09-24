from fasthtml.common import *
from monsterui.all import *

app, rt = fast_app()

@rt
def index(): return Div(P("Hello World!"), hx_get="/change")

@rt
def change(): return P('Nice to be here!')

serve()
