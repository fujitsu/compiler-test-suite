module m1
contains
subroutine sub(k1,k2,k3,k4,k5,k6,k)
integer,optional,value::k1
integer,optional      ::k2
integer,         value::k3
integer,optional,value::k4
integer,optional      ::k5
integer,         value::k6
select case(k)
case (1)
if (present(k1)) print *,201
if (present(k2)) print *,202
k3=k3+1
if (present(k4)) print *,204
if (present(k5)) print *,205
k6=k6+1
case (2)
if (.not.present(k1)) print *,301
k1=k1+1
if (.not.present(k2)) print *,302
k2=k2+1
k3=k3+1
if (.not.present(k4)) print *,304
k4=k4+1
if (.not.present(k5)) print *,305
k5=k5+1
k6=k6+1
end select
end subroutine
end
subroutine s1
use m1
n3=0
n6=0
call sub(k3=n3,k6=n6,k=1)
if (n3/=0) print *,101,n3
if (n6/=0) print *,102,n6
n1=0
n2=0
n4=0
n5=0
call sub(n1,n2,k3=n3,k4=n4,k5=n5,k6=n6,k=2)
if (n1/=0) print *,401,n1
if (n2/=1) print *,412,n2
if (n3/=0) print *,403,n3
if (n4/=0) print *,404,n4
if (n5/=1) print *,415,n5
if (n6/=0) print *,406,n6
end
call s1
print *,'pass'
end
