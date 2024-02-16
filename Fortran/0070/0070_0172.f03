character(2,1),pointer::aaa,yyy(:)
character(2,1),allocatable::bbb(:),zzz
call sss(aaa,bbb,yyy,zzz)
print *,'pass'
contains
subroutine sss(aaa,bbb,yyy,zzz)
character(*,1),pointer::aaa,yyy(:)
character(*,1),allocatable::bbb(:),zzz
namelist /nam/aaa,bbb,yyy,zzz
allocate(aaa,zzz)
allocate(bbb(3),yyy(3))
aaa="11"
bbb="22"
yyy="33"
zzz="44"
write(6,nam)
end subroutine
end
