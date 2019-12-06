# usage : sudo -u hobo hobo-manage tenant_command runscript -d demo-hobo.guichet-citoyen.be /opt/publik/scripts/build-e-guichet/hobo_create_variables.py
from hobo.environment.models import Variable

hobo_vars = Variable.objects
varnames = []
for var in hobo_vars.all():
    varnames.append(var.name)

if "check_duplicate_nn" not in varnames:
    Variable(
        name="check_duplicate_nn", label="check_duplicate_nn", value="False"
    ).save()
