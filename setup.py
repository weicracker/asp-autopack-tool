from cx_Freeze import setup, Executable  
  
  
setup(name='asp-pack', version = '0.1',description='pack asp file', executables = [Executable("pack.py")]) 