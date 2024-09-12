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

Module STmod2
USE STmod
contains
SUBROUTINE mod_sub(dum)
 CLASS(base) :: dum(:)
 SELECT TYPE(dum)
  CLASS IS(base)
   dum(4)%i1=4
  TYPE IS(inherit2)
   print*,202
  CLASS DEFAULT
   print*,203
 END SELECT
END SUBROUTINE  
END MODULE

program test
use STmod2

interface
  subroutine sub()
  end subroutine
end interface 

call sub()

end program test

subroutine sub()
use STmod2

interface
  function f1(d1)
  import base
  class (*),allocatable :: f1(:)
  type(base) :: d1(4)
  end function

  function f2(d1,d2,d3)
  import base
  class (*),allocatable :: f2(:)
  type(base) :: d1(4)
  integer::d2,d3
  end function
end interface

integer::num
type(base),allocatable :: frm(:)

allocate(frm(4))
frm%i1 = 5

select type (p1=>f2(frm,2,3))
  class is(base)
    num = p1(1)%i1
    if(num/=5)print*,301,num
      call mod_sub(p1)
    if(p1(4)%i1/=4)print*,302,p1(4)%i1
      print*,'pass'
  type is(inherit2)
    print*,103
end select

end subroutine sub

function f1(d1)
use STmod2
class (*),allocatable :: f1(:)
class (*),allocatable :: f2(:)
type(base) :: d1(4)
integer::d2,d3

allocate(f1,source=d1)

entry f2(d1,d2,d3)
if(d2==2 .and. d3==3) allocate(f2,source=d1)
end function
