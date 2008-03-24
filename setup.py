"""
This is a setup.py script generated by py2applet

Usage:
    python setup.py py2app
"""

from setuptools import setup

APP = ['GeoNibble.py']
DATA_FILES = ['images/mActionAddLayer.png',
 'images/mActionMetadata.png',
 'images/mActionOpenFolder.png',
 'images/mActionPan.png',
 'images/mActionZoomFullExtent.png',
 'images/mActionZoomIn.png',
 'images/mActionZoomOut.png']
OPTIONS = {'argv_emulation': True}

setup(
    app=APP,
    data_files=DATA_FILES,
    options={'py2app': OPTIONS},
    setup_requires=['py2app'],
)
