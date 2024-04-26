use,intrinsic:: iso_fortran_env
call s1(integer_kinds([1,2,3,4]),&
     logical_kinds([1,2,3,4]),&
     real_kinds([1,2,3,4]),&
     character_kinds([1]))
print *,'pass'
contains
subroutine s1(a1,a2,a3,a4)
integer,parameter::integer_kinds(4)=[1,2,4,8]
integer,parameter::logical_kinds(4)=[1,2,4,8]
integer,parameter::real_kinds(4)=[2,4,8,16]
integer,parameter::character_kinds(1)=[1]
integer,optional,intent(in)::a1(:),a2(:),a3(:),a4(:)
if(any(a1/=integer_kinds)) print *,'err1',a1
if(any(a2/=logical_kinds)) print *,'err2',a2
if(any(a4/=character_kinds)) print *,'err4'
end subroutine
end program
