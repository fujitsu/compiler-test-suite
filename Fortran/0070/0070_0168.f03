integer(1),pointer::aaa,yyy(:)
integer(1),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=huge(1_1)
bbb=huge(2_1)
yyy=huge(3_1)
zzz=huge(4_1)
write(6,nam)
print *,'pass'
end
