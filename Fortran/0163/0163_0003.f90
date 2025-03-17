use,intrinsic:: iso_fortran_env
call s1(integer_kinds([1,2,3,4]),&
     logical_kinds([1,2,3,4]),&
     real_kinds([1,2,3,4]),&
     character_kinds([1]))
print *,'pass'
contains
subroutine s1(a1,a2,a3,a4)
integer,optional,intent(in)::a1(:),a2(:),a3(:),a4(:)
if(any(a1/=a2)) print *,'err1'
if(any(a3/=[2,3,4,8])) print *,'err2',a3
if(any(a4/=[1])) print *,'err3'
end subroutine
end program
