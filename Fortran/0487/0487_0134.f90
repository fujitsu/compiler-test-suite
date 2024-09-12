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
      interface operator(*)
       function mul(a,b)
        use STmod
        class(*),pointer,intent(in) :: a
        class(*),pointer,intent(in) :: b
        class(base),pointer :: mul
       end function
      end interface operator(*)

      type (inherit2) :: tgt2,tgt1
      class (*), pointer :: p1,p2
      class(base),pointer :: res

      tgt1%i1 = 11
      tgt1%i2 = 12
      tgt1%i3 = 13
      tgt1%log2 = .false.
      tgt2%i1 = 21
      tgt2%i2 = 22
      tgt2%i3 = 23
      tgt2%log2 = .true.
      allocate(p2,source = tgt2)
      allocate(p1,source = tgt1)
      select type (p2)
       class is(inherit1)
         res => p1*p2
       type is(base)
       print*,99
       class default
       print*,100
      end select

      if(associated(res)) then
       if(res%i1 == 32) then
        print*,'pass'
       endif
      else
        print*,101
      endif

print *,'pass'
end program test

function mul(a,b)
 use STmod
 class(*),pointer,intent(in) :: a
 class(*),pointer,intent(in) :: b
 class(base),pointer :: mul
 type(inherit2),target :: mtgt

 SELECT TYPE(a)
  TYPE IS(base)
   print*,102
  TYPEIS(inherit1)
   print*,103,sizeof(b)
  TYPEIS(inherit2)
   mul => mtgt
 END SELECT
end function
