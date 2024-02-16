logical(8),pointer::aaa,yyy(:)
logical(8),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa=.true._8
bbb=.true._8
yyy=.true._8
zzz=.true._8
write(6,nam)
print *,'pass'
end
