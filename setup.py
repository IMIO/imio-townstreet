#! /usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import find_packages
from setuptools import setup
from setuptools.command.install import install
import os


class inst(install):
    def run(self):
        install.run(self)
        path = (
            os.getcwd().replace(" ", r"\ ").replace("(", r"\(").replace(")", r"\)")
            + "/bin/"
        )
        os.system("sh " + path + "install_imio-townstreet.sh")


version = "0.0.46"

setup(
    name="imio-townstreet",
    version=version,
    author="iA.Teleservices",
    author_email="support-ts@imio.be",
    packages=find_packages(),
    include_package_data=True,
    url="https://github.com/IMIO/imio-townstreet",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Environment :: Web Environment",
        "Framework :: Django",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: GNU Affero General Public License v3 or later (AGPLv3+)",
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2",
        "Programming Language :: Python :: 3",
    ],
    zip_safe=False,
    cmdclass={
        "inst": inst,
        "sdist": version,
    },
)
