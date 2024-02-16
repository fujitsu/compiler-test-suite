integer(2),pointer::aaa,yyy(:)
integer(2),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=huge(1_2)
bbb=huge(2_2)
yyy=huge(3_2)
zzz=huge(4_2)
write(6,nam)
print *,'pass'
end
