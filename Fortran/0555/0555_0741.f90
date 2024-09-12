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
      type (base), target :: tgt(5)
      class (base), pointer :: p2(:)
      class (base), allocatable :: obj(:)
      tgt%i1 = 2
      tgt(4)%i1 = 3
      p2 => tgt
      select type (p2)
       type is(inherit1)
       print*,101
       type is(inherit2)
       print*,102
       class default
        allocate(obj,source=p2)
      end select

      if(obj(4)%i1 == 3) then
       print*,'pass'
      else
       print*,103
      endif
end program test
