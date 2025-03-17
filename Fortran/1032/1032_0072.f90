module m1
 type a
    real   (8)::a
 end type
 contains 
 subroutine sub(b)
 type(a)::b(1,2),bb(1,2)
 call s(b(1,1)%a)
 call s(b(1,2)%a)
 bb=b
 call s(bb(1,1)%a)
 call s(bb(1,2)%a)
 end subroutine
 subroutine s(x)
 real(8) ::x
 if (abs(x-1._8)>0.0000001_8)print *,'error'
 end subroutine
end
use m1
 type(a)::x1(2)
 x1=(/a(1._8),a(1._8)/)
 call sub(cshift(x1,1))
print *,'pass'
end 
