logical :: l
l = ble(-1,1)
print *,'pass'
if (l.eqv..true.) print *,'err'
end
