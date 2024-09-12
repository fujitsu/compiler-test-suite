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

      type (inherit2), target :: tgt2
      class (base), pointer :: p2
      type (inherit2), pointer :: res(:)
      
      allocate(inherit2::res(2))
      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%i3 = 23
      tgt2%log2 = .true.
      p2 => tgt2
      select type (A=>p2)     
       type is(inherit1)
        print*,101
       type is(inherit2)
         res=[A,tgt2]
       type is(base)
        print*,102
       class default
        print*,103
      end select

      if(res(1)%i1 == 21) then
        print*,'pass'
      else
        print*,111
      endif

end program test
