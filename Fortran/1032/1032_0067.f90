module m1
 type a
    logical(1)::a
 end type
 logical,parameter::t=.true.,f=.false.
 contains 
 subroutine sub(b)
 type(a)::b(2),bb(2)
 call s(b(1)%a)
 call s(b(2)%a)
 bb=b
 call s(bb(1)%a)
 call s(bb(2)%a)
 end subroutine
 subroutine s(x)
 logical(1) ::x
 if (.not.x)print *,'error'
 end subroutine
end
use m1
 type(a)::x1(2),x2(2)
 x1=(/a(t),a(f)/)
 x2=(/a(f),a(t)/)
 call sub(merge(x1,x2,(/t,f/)))
print *,'pass'
end 
