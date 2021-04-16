#! /usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup
from setuptools.command.install import install
from setuptools import setup
import os

class inst(install):
    def run(self):
        install.run(self)
        path = os.getcwd().replace(" ", r"\ ").replace("(",r"\(").replace(")",r"\)") + "/bin/"
        os.system("sh "+path+"install_imio-townstreet.sh")

setup(
    name='imio-townstreet',
    author='Christophe Boulanger',
    author_email='christophe.boulanger@imio.be',
    packages=["publik-imio-industrialisation"],
    include_package_data=True,
    url='https://github.com/IMIO/imio-townstreet',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Environment :: Web Environment',
        'Framework :: Django',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU Affero General Public License v3 or later (AGPLv3+)',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
    ],
    zip_safe=False,
    cmdclass={
        'inst': inst,
    }
)
