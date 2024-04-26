use,intrinsic:: iso_fortran_env
call s1(integer_kinds(1),&
     integer_kinds(2),&
     integer_kinds(3),&
     integer_kinds(4),&
     logical_kinds(1),&
     logical_kinds(2),&
     logical_kinds(3),&
     logical_kinds(4),&
     real_kinds(1),&
     real_kinds(2),&
     real_kinds(3),&
     character_kinds(1))
print *,'pass'
contains
subroutine s1(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)
integer,value,optional::a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12
if(a1/=a5) print *,'err1',a1,a5
if(a2/=a6) print *,'err2'
if(a3/=a7) print *,'err3'
if(a4/=a8) print *,'err4'
if(a12/=1) print *,'err8'
end subroutine
end program
