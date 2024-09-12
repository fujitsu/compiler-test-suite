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
contains
SUBROUTINE mod_sub(dum)
 CLASS(base) :: dum(:)
 SELECT TYPE(dum)
  CLASS IS(base)
   dum(4)%i1=33
   print*,201
  TYPE IS(inherit1)
   dum(4)%i1=4
  TYPE IS(inherit2)
   print*,202
  CLASS DEFAULT
   print*,203
 END SELECT
END SUBROUTINE  
END MODULE

program test
      use STmod2
 interface
  subroutine sub(p1)
      use STmod2
      class (base),allocatable :: p1(:)
  end subroutine
end interface 

      class (base),allocatable :: tgt1(:)
      allocate(inherit1::tgt1(4))
      tgt1%i1 = 5
      call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod2
      integer::num
      class (base),allocatable :: p1(:)
      type(base),allocatable :: frm(:)

      allocate(frm(4))
      frm%i1=2
      frm(2)%i1=20
 
      select type (p1)
        class default
         print*,101
        type is(inherit1)
         num = p1(1)%i1
         if(num/=5)print*,301
         call mod_sub(p1)
         if(p1(4)%i1/=4)print*,302
        type is(base)
         print*,102
        type is(inherit2)
         print*,103
      end select

      call move_alloc(frm,p1)

      select type (p1)
        class default
         if(p1(2)%i1/=20) then
          print*,104
         else
          print*,'pass'
         endif
        type is(inherit1)
         print*,105
        type is(inherit2)
         print*,106
      end select
      
end subroutine sub
