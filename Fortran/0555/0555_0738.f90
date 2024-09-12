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
 CLASS(base) :: dum(:)
 SELECT TYPE(dum)
  CLASS IS(base)
   dum%ch1='EIGHT1'
   st1 = 'base_CI'
   print*,99
  TYPE IS(inherit1)
   if(dum(3)%i1/=10) print*,100
   dum(3)%i1=20
  TYPE IS(inherit2)
   dum%i2=7
   st1 = 'in2_TI'
   print*,101
  CLASS DEFAULT
   dum%i1=1
   st1 = 'CD'
   print*,102
 END SELECT
END SUBROUTINE  
END MODULE

program test
      use STmod2
 interface
  subroutine sub(p1)
      use STmod2
      class (inherit1),allocatable :: p1(:)
  end subroutine
end interface 

      class (inherit1),allocatable :: tgt1(:)
      allocate(tgt1(3))
      tgt1%i1 = 5
      tgt1(3)%i1 = 10
      call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod2
      class (inherit1),allocatable :: p1(:)
      
      select type (p1)
        class default
         call mod_sub(p1)
         if(p1(3)%i1 == 20) then
           print*,'pass'
         else
           print*,101
         endif
        type is(inherit2)
        print*,103
      end select
end subroutine sub
