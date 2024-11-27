module m1
character:: z(5)=(/'1','2','3','4','5'/)
contains
subroutine t1(w1,w2)
character(*)::w1(:),w2(5)
call s21(w2(1))
call s22(w2(1))
end subroutine
subroutine s21(c1)
character(len=*) c1(5)
if (any((/c1/)/=z))write(6,*) "NG"
end subroutine
subroutine s22(c2)
character(len=*) c2(*)
if (any((/c2(:5)/)/=z))write(6,*) "NG"
end subroutine
subroutine s23(c3)
character(len=3) c3(*)
if (c3(2)(1:2)/='12345')write(6,*) "NG"
end subroutine
end
use m1
call t1(z,z)
print *,'pass'
end
