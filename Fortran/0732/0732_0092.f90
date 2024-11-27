real,allocatable,dimension(:,:)::POP
allocate(POP(-30,-20))
CALL s( POP )
CALL s(TRANSPOSE( POP ))
print *,'pass'
contains
subroutine s(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/0,0/)))write(6,*) "NG"
end subroutine
end
