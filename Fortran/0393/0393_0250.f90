module m1
contains
subroutine s1(k1,k2)
intent(in)::k1
pointer::k1,k2
call sss1(k1)
call sss2(k1)
k1=2
call sss3(k1)
k1=2
call sss4(k1)
call sss5(k1)
call sss1(k2)
call sss2(k2)
k2=2
call sss3(k2)
k2=2
call sss4(k2)
call sss5(k2)
contains
subroutine sss1(n1)
if (n1/=2) print *,901
end subroutine
subroutine sss2(n1)
intent(inout)::n1
n1=n1+1
end subroutine
subroutine sss3(n1)
intent(out)::n1
n1=1
end subroutine
subroutine sss4(n1)
intent(in)::n1
if (n1/=2) print *,901
end subroutine
end subroutine
end
subroutine sss5(n1)
if (n1/=2) print *,301
end subroutine
use m1
pointer::k1,k2
allocate(k1,k2)
k1=2
k2=2
call s1(k1,k2)
print *,'pass'
end
