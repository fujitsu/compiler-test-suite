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

      type (inherit1), target :: tgt2(5)
      class (base), allocatable :: p2(:)
      type (inherit1), pointer :: res(:)
      
      allocate(inherit1::res(2))
      tgt2%i1 = 2
      tgt2(3)%i1 = 5
      allocate(p2, source = tgt2)
      select type (p2)    
       class is(inherit1)
         res=[p2(3),tgt2(1)]
       type is(base)
        print*,102
       class default
        print*,103
      end select

      if(res(1)%i1 == 5 .and. res(2)%i1 == 2) then
        print*,'pass'
      else
        print*,111
      endif

end program test
