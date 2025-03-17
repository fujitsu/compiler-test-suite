module m1
 type a
    logical(2)::a
 end type
 logical,parameter::t=.true.,f=.false.
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
 logical(2) ::x
 if (.not.x)print *,'error'
 end subroutine
end
use m1
 type(a)::x1(2)
 x1=(/a(t),a(t)/)
 call sub(cshift(x1,1))
print *,'pass'
end 
