real(16),pointer::aaa,yyy(:)
real(16),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=1
bbb=2
yyy=3
zzz=4
write(6,nam)
print *,'pass'
end
