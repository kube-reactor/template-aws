"""
NOTE:
    the below code maintains the Base Reactor Cluster
    CookieCutter Django project initialization

    * It sets local environment variables
    * It managed the OS license and community files
"""

TERMINATOR = "\x1b[0m"
WARNING = "\x1b[1;33m [WARNING]: "
INFO = "\x1b[1;33m [INFO]: "
HINT = "\x1b[3;33m"
SUCCESS = "\x1b[1;32m [SUCCESS]: "

# The content of this string is evaluated by Jinja, and plays an important role.
# It updates the cookiecutter context to trim leading and trailing spaces
# from values
"""
{{ cookiecutter.update({ "organization": cookiecutter.organization | trim }) }}
{{ cookiecutter.update({ "domain": cookiecutter.domain | trim }) }}
{{ cookiecutter.update({ "admin_email": cookiecutter.admin_email | trim }) }}
{{ cookiecutter.update({ "ingress_node_port": cookiecutter.ingress_node_port | trim }) }}
{{ cookiecutter.update({ "primary_aws_region": cookiecutter.primary_aws_region | trim }) }}
{{ cookiecutter.update({ "secondary_aws_region": cookiecutter.secondary_aws_region | trim }) }}
{{ cookiecutter.update({ "aws_access_key": cookiecutter.aws_access_key | trim }) }}
{{ cookiecutter.update({ "aws_secret_key": cookiecutter.aws_secret_key | trim }) }}
{{ cookiecutter.update({ "cloudflare_api_key": cookiecutter.cloudflare_api_key | trim }) }}
"""

project_slug = "{{ cookiecutter.project_slug }}"
if hasattr(project_slug, "isidentifier"):
    assert (
        project_slug.isidentifier()
    ), "'{}' project slug is not a valid Python identifier.".format(project_slug)

assert (
    project_slug == project_slug.lower()
), "'{}' project slug should be all lowercase".format(project_slug)
