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

interface
  subroutine sub(p1)
    use STmod
    class (*) :: p1(1,*)
    class(base),allocatable :: obj(:)
  end subroutine
end interface 

type (inherit1) :: tgt1(12,13)
tgt1%i1 = 5
tgt1(2,11)%i1 = 15
call sub(tgt1)
end program test

subroutine sub(p1)
use STmod

class (*) :: p1(1,*)
class(base),allocatable :: obj(:)

select type (A=>p1([3,1,2,6,4],11))
  class is(inherit2)
    print*,101
  class is(base)
    print*,102
  class is(inherit1)
    print*,103
  type is (inherit1)
    allocate(obj,source=A(:))
    obj(1)%i1=3
    obj(2)%i1=3
    obj(4)%i1=3
    obj(5)%i1=3
  type is(base)
    print*,104
    type is(inherit2)
    print*,105
end select

if(obj(3)%i1 == 5) then
  print*,'pass'
else
  print*,106
endif

end subroutine sub
