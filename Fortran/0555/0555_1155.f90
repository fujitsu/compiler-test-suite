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
        class(inherit1),allocatable,intent(inout) :: b(:)
        type(inherit2),target,intent(in) :: a(3)
       end subroutine
      end interface assignment(=)

      type (inherit2), target :: p1(3),tgt2(3)
      class (*), allocatable :: p2(:)

      p1%i1 = 11
      p1%i2 = 12
      p1%i3 = 13
      p1%log2 = .false.
      tgt2%i1 = 21
      tgt2(3)%i1 = 22
      allocate(p2,source = tgt2)
      select type (p2)
       class is(inherit1)
       p2 = p1  
       if(p2(3)%i1 == p1(3)%i1) then
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
 class(inherit1),allocatable,intent(inout) :: b(:)
 type(inherit2),target,intent(in) :: a(3)

 b%i1=a%i1
end subroutine
