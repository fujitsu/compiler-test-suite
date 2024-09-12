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
 interface
  subroutine sub(p1)
      use STmod
      class (base) :: p1
  end subroutine
end interface 

      type (inherit1) :: tgt1
      tgt1%i1 = 5
      call sub(tgt1)

end program 

subroutine sub(p1)
      use STmod
 
      class (base) :: p1
      
      select type (p1)
        class is(inherit2)
         print*,101
        class is(base)
         print*,103
        class is(inherit1)
         print*,104
        type is (inherit1)
        call insub(p1)
         if(p1%i1 == 12 .and. p1%log2 .eqv. .true.) then
           print*,'pass'
         else
           print*,105
         endif
        type is(base)
         print*,102
        type is(inherit2)
         print*,106
      end select
contains
 subroutine insub(dum)
  class(base)::dum
  select type(dum)
  type is(inherit1)
   dum=inherit1(12,'base',13,.true.)
  type is(base)
   dum=base(12,'base')
  end select
 end subroutine insub
end subroutine sub