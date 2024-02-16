integer(8),pointer::aaa,yyy(:)
integer(8),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=huge(1_8)
bbb=huge(2_8)
yyy=huge(3_8)
zzz=huge(4_8)
write(6,nam)
print *,'pass'
end
