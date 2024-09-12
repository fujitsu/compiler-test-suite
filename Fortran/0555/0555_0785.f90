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

      integer, target :: tgt2(4)
      class (*), pointer :: p2(:)
      integer, pointer :: res(:)
      
      allocate(res(2))
      tgt2 = 4
      tgt2(1) = 2
      p2 => tgt2

      select type (p2)     
       type is(inherit1)
        print*,101
       type is(inherit2)
        print*,102
        type is(integer)
         do i = 1, p2(1)
          res=[(i+1),(i+1)]
         end do
       type is(base)
        print*,103
       class default
        print*,104
      end select

      if(res(1) == 3) then
        print*,'PASS'
      else
        print*,111
      endif

end program test
