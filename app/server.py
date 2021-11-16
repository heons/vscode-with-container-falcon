import falcon
from .images import Resource

app = falcon.App()

images = Resource()
app.add_route('/images', images)
