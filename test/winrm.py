import winrm

s = winrm.Session('localhost', auth=('vagrant', 'vagrant'))
r = s.run_cmd('ipconfig', ['/all'])
print(r.status_code)
print(r.std_out)
print(r.std_err)
