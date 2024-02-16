namelist /nam/aaa,bbb,ccc
integer::aaa,bbb,ccc
pointer::aaa,ccc
allocatable::bbb
dimension::bbb(:),ccc(:)
namelist /nam/aaa,bbb,ccc
allocate(aaa)
allocate(bbb(3),ccc(3))
namelist /nam/aaa,bbb,ccc
aaa=1
bbb=2
ccc=3
namelist /nam/aaa,bbb,ccc
write(6,nam)
print *,'pass'
end
