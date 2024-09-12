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
      class (base), pointer :: p2(:)
      type (inherit2), target :: tgt2(4)
      tgt2%i1 = 1
      tgt2(3)%i1 = 2
      p2 => tgt2
      select type (p2)
       type is(inherit1)
         print*,101 
       type is(base)
         print*,102 
       class default
        select case(p2(3)%i1)
         case(1)
          print*,103
         case(2)
          print*,'pass'
        end select
      end select

end program test
