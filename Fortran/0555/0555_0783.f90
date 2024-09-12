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
      type (base), target :: tgt(4)
      class (*), pointer :: p2(:)
      class (*), allocatable :: obj(:)
      tgt%i1 = 21
      tgt(3)%i1 = 20
      p2 => tgt
      select type (p2)
       type is(inherit1)
         print*,101
       type is(inherit2)
         print*,102
       class default
        allocate(obj,source=p2)
      end select

      if(allocated(obj)) then
       print*,'PASS'
      else
       print*,'101'
      endif
end program test
