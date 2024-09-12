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
   dum%i1=2
   dum%ch1='EIGHT1'
   st1 = 'base_CI'
   print*,201
   
  TYPE IS(inherit1)
   if(dum%i1 /=5) then
     print*,200
   else
     print*,'CASE:SELECTOR IN I/O STATEMENT'
     print*,dum
     print*,'pass'
   endif
   dum%i1=3
   dum%ch1='EIGHT2'
   dum%i2=6
   dum%log2=.true.
   st1 = 'in1_TI'
  TYPE IS(inherit2)
   dum%i1=4
   dum%ch1='EIGHT3'
   dum%i2=7
   dum%log2=.false.
   st1 = 'in2_TI'
   print*,202
  CLASS DEFAULT
   dum%i1=1
   print*,'default case'
   st1 = 'CD'
   print*,203
 END SELECT
END SUBROUTINE  
END MODULE

program test
      use STmod2
 interface
  subroutine sub(p1)
      use STmod2
      class (inherit1),allocatable :: p1
  end subroutine
end interface 

      class (inherit1),allocatable :: tgt1
      allocate(tgt1)
      tgt1%i1 = 5
      call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod2
 
      class (inherit1),allocatable :: p1
      
      select type (p1)
        class default
         print*,100
        type is(inherit1)
         if(p1%i1 /=5) print*,101
         call mod_sub(p1)
        type is(inherit2)
        print*,103
      end select
end subroutine sub
