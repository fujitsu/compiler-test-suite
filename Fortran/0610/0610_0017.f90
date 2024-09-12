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

      type total
       class (base), pointer :: p2
      end type

      type(total) :: objj

      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%log2 = .true.
      objj%p2 => tgt2
      select type (Ao=>objj%p2)
       type is(inherit1)
         print*,101 
       type is(base)
         print*,102 
       class default
        select case(Ao%i1)
         case(11)
          print*,103
         case(21)
          print*,'pass'
        end select
      end select

end program test
