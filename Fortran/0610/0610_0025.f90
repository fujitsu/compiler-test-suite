Module STmod

 TYPE base
  integer :: i1=1
  character(8) :: ch1='a'
 END TYPE

 TYPE,extends(base) :: inherit1
  integer :: i2=2
  logical :: log2=.true.
 END TYPE

 TYPE,extends(inherit1) :: inherit2
  integer :: i3=3
  real :: r3=1.1
 END TYPE

END MODULE

module mm
use STmod

contains
function mfun(dum)
 class (base), pointer :: mfun(:)
 type (inherit2), target :: dum(5)
 mfun => dum
end function
end module

program test
      use STmod
      use mm
      interface operator(*)
       function mul(a,b)
        use STmod
        type(inherit2),intent(in) :: a(5)
        type(inherit2),intent(in) :: b(5)
        class(base),pointer :: mul(:)
       end function
      end interface operator(*)

      type (inherit2), target :: tgt1(5),tgt2(5)
      class (base), pointer :: res(:)

      tgt1%i1 = 1
      tgt1%i2 = 1
      tgt1%i3 = 1
      tgt1%log2 = .false.
      tgt2%i1 = 2
      tgt2%i2 = 2
      tgt2%i3 = 2
      tgt2%log2 = .true.
      tgt2(3)%i1 = 1
      tgt2(3)%i2 = 1
      tgt2(3)%i3 = 1
      select type (p2=>mfun(tgt2))
       type is(inherit1)
       print*,101
       type is(inherit2)
         res => tgt1*p2
       type is(base)
       print*,102
       class default
       print*,103
      end select

      if(res(3)%i1==2) then
        print*,'pass'
      else
        print*,104,res(3)%i1
      endif

end program test

function mul(a,b)
 use STmod
 type(inherit2),intent(in) :: a(5)
 type(inherit2),intent(in) :: b(5)
 class(base),pointer :: mul(:)
 type(inherit2),save,target :: mtgt(5)

   mtgt%i1= a%i1 + b%i1
   mtgt%i2= a%i2 + b%i2
   mtgt%i3= a%i3 + b%i3
   mtgt%log2 = a%log2 .or. b%log2

   mul => mtgt
end function
