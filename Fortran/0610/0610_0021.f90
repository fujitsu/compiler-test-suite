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
  subroutine sub(dum)
      use STmod
      class (inherit1),pointer :: dum(:)
  end subroutine
end interface 

      class (inherit1),pointer :: tgt1(:)
      allocate(tgt1(5))
      tgt1%i1 = 5
      tgt1(3)%i1 = 50
      call sub(tgt1)

end program test

subroutine sub(dum)
      use STmod

      interface
      function funn(dd)
      import inherit1
      class (inherit1),pointer :: funn(:),dd(:)
      end function
      end interface
 
      class (inherit1),pointer :: dum(:)
      type(inherit1) :: p2(5)
      
      select type (p1=>funn(dum))
        type is (inherit1)
         p2 = p1
         if(p2(3)%i1 == 50) then
           print*,'pass'
         else
           print*,102
         endif
        type is(inherit2)
         p2%i1=p1%i1
         print*,101
      end select
end subroutine

function funn(dd)
 use STmod
 class (inherit1),pointer :: funn(:),dd(:)
 funn => dd
end function
