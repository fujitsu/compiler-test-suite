module m1
 implicit none
 integer,parameter::k=selected_real_kind(1)
 integer,parameter::k2=2,k4=4
 real(k4):: r4
 complex(k4):: c4
 real(k2):: r2
 complex(k2):: c2
end
subroutine s1
use m1
integer,parameter:: n1=digits( r2 )
integer,parameter:: n2=digits( r4 )

if (k/=k2) print *,201
if (digits( r2 )/= n1) print *,301
if (digits( r4 )/= n2) print *,302
if (11          /= n1) print *,303
if (24          /= n2) print *,304

end
call s1
print *,'pass'
end
