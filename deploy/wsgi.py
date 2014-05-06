"""
WSGI config for customer_site project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/howto/deployment/wsgi/
"""

import os
import sys
import site

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "customer_site.settings")
site.addsitedir('/home/ubuntu/.virtualenvs/customer-site/local/lib/python2.7/site-packages')

# Calculate the path based on the location of the WSGI script
project = '/home/ubuntu/customer-site/'
workspace = os.path.dirname(project)
sys.path.append(workspace)

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

