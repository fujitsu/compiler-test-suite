print *,(/o'2'/)
print *,(/b'1'/)
print *,(/z'2'/)

print *,(/o'2',o'2'/)
print *,(/b'1',o'2'/)
print *,(/z'2',o'2'/)

print *,(/o'2',b'1'/)
print *,(/b'1',b'1'/)
print *,(/z'2',b'1'/)

print *,(/o'2',z'2'/)
print *,(/b'1',z'2'/)
print *,(/z'2',z'2'/)

print *,(/1,o'2'/)
print *,(/1,b'1'/)
print *,(/1,z'2'/)

print *,(/o'2',1/)
print *,(/b'1',1/)
print *,(/z'2',1/)

print *,(/(o'2',i=1,1)/)
print *,(/(b'1',i=1,1)/)
print *,(/(z'2',i=1,1)/)

print *,(/(o'2',o'2',i=1,1)/)
print *,(/(b'1',o'2',i=1,1)/)
print *,(/(z'2',o'2',i=1,1)/)

print *,(/(o'2',b'1',i=1,1)/)
print *,(/(b'1',b'1',i=1,1)/)
print *,(/(z'2',b'1',i=1,1)/)

print *,(/(o'2',z'2',i=1,1)/)
print *,(/(b'1',z'2',i=1,1)/)
print *,(/(z'2',z'2',i=1,1)/)

print *,(/(1,o'2',i=1,1)/)
print *,(/(1,b'1',i=1,1)/)
print *,(/(1,z'2',i=1,1)/)

print *,(/(o'2',1,i=1,1)/)
print *,(/(b'1',1,i=1,1)/)
print *,(/(z'2',1,i=1,1)/)
end
