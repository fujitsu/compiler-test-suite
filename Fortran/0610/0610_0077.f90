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

program test
use STmod

  interface operator(*)
    function mul(a,b)
    use STmod
    class(base),intent(in) :: a(:)
    class(inherit1),intent(in) :: b(:)
    class(base),pointer :: mul(:)
    end function
  end interface operator(*)

  interface ifun
   function fun1(d1,d2)
   import base
   import inherit2
   class (*), allocatable :: fun1(:)
   type (inherit2) :: d1(5),d2(5)
  end function

  function fun2(d1)
  import base
  import inherit2
  class (*), allocatable :: fun2(:)
  type (inherit2) :: d1(5)
  end function
  end interface

  type (inherit2) :: tgt2(5),tgt1(5)
  class (base), allocatable :: p1(:)
  class(base),pointer :: res(:)
  tgt1%i1 = 1
  tgt1%i2 = 1
  tgt1%i3 = 1
  tgt1(3)%i1 = 3
  tgt1(3)%i2 = 3
  tgt1(3)%i3 = 3
  tgt1%log2 = .false.
  tgt2%i1 = 2
  tgt2%i2 = 2
  tgt2%i3 = 2
  tgt2%log2 = .true.
  allocate(p1(5),source = tgt1)
  select type (p2=>ifun(tgt2))
    class is(inherit1)
      res => p1*p2
    type is(base)
      print*,99
    class default
      print*,100
  end select

  if(res(3)%i1==5) then
    print*,'pass'
  else
    print*,101
  endif

end program test

function mul(a,b)
 use STmod
 class(base),intent(in) :: a(:)
 class(inherit1),intent(in) :: b(:)
 class(base),pointer :: mul(:)
 type(inherit2),save,target :: mtgt(5)

 SELECT TYPE(a)
  TYPE IS(base)
   print*,101
  TYPE IS(inherit1)
   print*,102
  TYPE IS(inherit2)
   mtgt%i1= a%i1 + b%i1
   mtgt%i2= a%i2 + b%i2
   mtgt%log2 = a%log2 .or. b%log2

   mul => mtgt
 END SELECT
end function

function fun1(d1,d2)
use STmod
class (*), allocatable :: fun1(:)
type (inherit2) :: d1(5),d2(5)
allocate(fun1(5),source=d2)
end function

function fun2(d1)
use STmod
class (*), allocatable :: fun2(:)
type (inherit2) :: d1(5)
allocate(fun2(5),source = d1)
end function
