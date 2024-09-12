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

      type (inherit1), target :: tgt2
      class (base), allocatable :: p2
      type (inherit1), pointer :: res(:)
      
      allocate(inherit1::res(2))
      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%log2 = .true.
      allocate(p2, source = tgt2)
      select type (p2)    
       class is(inherit1)
         res=[p2,tgt2]
       type is(base)
        print*,102
       class default
        print*,103
      end select

      if(res(1)%i1 == 21 .and. res(2)%i1 == 21) then
        print*,'pass'
      else
        print*,111
      endif

end program test
