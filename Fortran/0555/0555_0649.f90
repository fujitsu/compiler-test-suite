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
      class (inherit1),pointer :: p1
  end subroutine
end interface 

      class (inherit1),pointer :: tgt1
      allocate(tgt1)
      tgt1%i1 = 5
      call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod
 
      class (inherit1),pointer :: p1
      type(inherit1) :: p2
      
      select type (p1)
        type is (inherit1)
         p2 = p1
         if(p2%i1 == 5) then
           print*,'pass'
         else
           print*,102
         endif
        type is(inherit2)
         p2%i1=p1%i1
         print*,101
      end select
end subroutine
