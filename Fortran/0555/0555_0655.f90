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
      type (base), target :: tgt
      class (base), pointer :: p2
      class (base), allocatable :: obj
      tgt%i1 = 21
      p2 => tgt
      select type (p2)
       type is(inherit1)
        allocate(inherit1::obj)
        obj%i1=44
       print*,101
       type is(inherit2)
        allocate(inherit2::obj)
        obj%i1=55
       print*,102
       class default
        allocate(obj,source=p2)
      end select

      if(obj%i1 == 21) then
       print*,'pass'
      else
       print*,103
      endif
end program test
