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

module STmod2
use STmod

character(8) :: st1
contains
SUBROUTINE mod_sub(dum)
 CLASS(base) :: dum
 SELECT TYPE(dum)
  CLASS IS(base)
   dum%i1=2
   dum%ch1='EIGHT1'
   st1 = 'base_CI'
   print*,101
  TYPE IS(inherit1)
   dum%i1=3
   dum%ch1='EIGHT2'
   dum%i2=6
   dum%log2=.true.
   st1 = 'in1_TI'
   if(dum%i2 /=6) then 
     print*,214
   else 
     print*,'pass1'
   endif
  TYPE IS(inherit2)
   dum%i1=4
   dum%ch1='EIGHT3'
   dum%i2=7
   dum%log2=.false.
   st1 = 'in2_TI'
   print*,102
  CLASS DEFAULT
   dum%i1=1
   print*,'default case'
   st1 = 'CD'
   print*,103
 END SELECT
END SUBROUTINE  
END MODULE

program main
use STmod

interface
  subroutine sub()
      use STmod2
  end subroutine
end interface

call sub()
end program

   subroutine sub()
      use STmod2

      type total
       class (base), allocatable :: p2
      end type

      type(total) :: objj
      type (inherit1) :: tgt

      call mod_sub(tgt)
      allocate(objj%p2,source=tgt)

      select type (Ao=>objj%p2)
       type is(inherit2)
        print*,101
       class is(base)
        select case(Ao%i1)
         case(1)
          print*,111
         case(2)
          print*,112
         case(3)
          print*,'pass2'
         case(4)
          print*,114
        end select
      end select

   end subroutine
