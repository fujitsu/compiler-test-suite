module m1
contains
subroutine s1()
complex,allocatable:: z1
integer,allocatable:: z2
logical,allocatable:: z3
z1=(1,2)
if (abs(z1-(1,2))>0.001) print *,102
z2=1
if (   z2/=1) print *,103
z3=.true.
if (   .not.z3) print *,104
end subroutine 
subroutine s2(z1,z2,z3)
complex,allocatable:: z1
integer,allocatable:: z2
logical,allocatable:: z3
z1=(1,2)
if (abs(z1-(1,2))>0.001) print *,102
z2=1
if (   z2/=1) print *,103
z3=.true.
if (   .not.z3) print *,104
end subroutine 
end
use m1
complex,allocatable:: z1
integer,allocatable:: z2
logical,allocatable:: z3
call s1()
call s2(z1,z2,z3)
print *,'pass'
end
  
