"""
Main module
"""

import db

hits_info = db.hits()
parent_info = db.parent_distros()
releases_info = db.releases()

print(f"{hits_info=}", f"{parent_info=}", f"{releases_info=}", sep='\n\n')
