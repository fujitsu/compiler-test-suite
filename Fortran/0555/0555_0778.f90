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
    class (*) :: p1(:)
  end subroutine
end interface 

type (inherit1) :: tgt1(4)

tgt1%i1=4
tgt1(4)%i1=40
call sub(tgt1)
end program test

subroutine sub(p1)
use STmod 
class (*) :: p1(:)

select type (p1)
  class is(inherit2)
    print*,101
  class is(base)
    print*,102
  class is(inherit1)
    print*,103
  type is (inherit1)
    call insub(p1)
    if(p1(1)%i1 == 12 .and. p1(1)%log2 .eqv. .true. .and. p1(4)%i1 == 40) then
      print*,'pass'
    else
      print*,104
    endif
  type is(base)
    print*,105
  type is(inherit2)
    print*,106
end select
contains
 subroutine insub(dum)
   class(*)::dum(:)
   select type(dum)
     type is(inherit1)
       if(dum(4)%i1/=40)print*,107
       dum(1)=inherit1(12,'base',13,.true.)
     type is(base)
       print*,108
   end select
 end subroutine insub
end subroutine sub
