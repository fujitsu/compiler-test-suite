Module m
contains
impure  elemental  function fun(aa,bb)
    real,value::aa
    real::bb
   intent(in) aa
    value::bb
   real::fun
   fun=aa+bb
  end function

impure elemental subroutine sub(aa,bb)
  real::aa,bb
   intent(in)  aa
   intent(inout) bb
   value  aa
   bb=aa
  end subroutine
end module
use m

real::a=7.5
real :: b=10.5
if (fun(a,b) .ne. 18)print*,"101"
call sub(a,b)
if(b .ne. 7.5)print*,"102",b
print*,"Pass"
end
