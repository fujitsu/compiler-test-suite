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
      interface assignment(=)
       subroutine asn(b,a)
        use STmod
        class(inherit1),pointer,intent(inout) :: b
        type(inherit2),target,intent(in) :: a
       end subroutine
      end interface assignment(=)

      type (inherit2), target :: p1,tgt2
      class (*), pointer :: p2

      p1%i1 = 11
      p1%i2 = 12
      p1%i3 = 13
      p1%log2 = .false.
      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%i3 = 23
      tgt2%log2 = .true.
      p2 => tgt2
      select type (p2)
       type is(inherit2)
       p2 = p1  
       if(p2%i1 == p1%i1) then
         print*,'PASS'
       else
         print*,'101'
       endif
       type is(base)
         print*,'102'
       class default
         print*,'103'
      end select

end program test

subroutine asn(b,a)
 use STmod
 class(inherit1),pointer,intent(inout) :: b
 type(inherit2),target,intent(in) :: a

 b => a
end subroutine
