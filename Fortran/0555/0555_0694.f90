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
    class (*) :: p1
  end subroutine
end interface 

type (inherit1) :: tgt1
call sub(tgt1)

end program test

subroutine sub(p1)
use STmod 
class (*) :: p1
TYPE(inherit1)::obj

select type (p1)
  class is(inherit2)
    print*,101
  class default
    call insub(p1)
    if(obj%i1 .EQ. 12 .and. obj%log2 .eqv. .true.) then
      print*,'pass'
    else
      print*,103
    endif
  type is(base)
    print*,104
  type is(inherit2)
    print*,105
end select
contains
 subroutine insub(dum)
   class(*)::dum
   select type(dum)
     type is(inherit1)
       dum=inherit1(12,'base',13,.true.)
       obj=dum
     type is(base)
       print*,106
   end select
 end subroutine insub
end subroutine sub
