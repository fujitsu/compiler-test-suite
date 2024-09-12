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

Module STmod2
USE STmod
character(8) :: st1
contains
SUBROUTINE mod_sub(dum)
 CLASS(base) :: dum
 SELECT TYPE(dum)
  CLASS IS(base)
   print*,101
  TYPE IS(inherit1)
   if(dum%i1 /=3) then 
     print*,214
   else 
     print*,'pass1'
   endif
   dum%i1=5
  TYPE IS(inherit2)
   print*,102
  CLASS DEFAULT
   print*,103
 END SELECT
END SUBROUTINE  
END MODULE

program main
use STmod

interface
  subroutine sub(p2)
      use STmod2
      class (base), allocatable :: p2(:)
  end subroutine
end interface

class (base),allocatable ::act(:)
call sub(act)
end program

   subroutine sub(p2)
      use STmod2
 
      class (base), allocatable :: p2(:)
      type (inherit1) :: tgt
      tgt%i1=3
      call mod_sub(tgt)
      allocate(p2(2),source=tgt)
      select type (p2)
       type is(inherit2)
        print*,101
       class is(base)
        select case(p2(1)%i1)
         case(1)
          print*,111
         case(2)
          print*,112
         case(3)
          print*,113
         case(4)
          print*,114
         case(5)
          print*,'pass2'
        end select
      end select

   end subroutine
