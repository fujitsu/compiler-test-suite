logical(1),pointer::aaa,yyy(:)
logical(1),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=.true._1
bbb=.true._1
yyy=.true._1
zzz=.true._1
write(6,nam)
print *,'pass'
end
