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
end program test

subroutine sub(p1)
      use STmod
      class(base),allocatable :: obj
      class (base) :: p1
      
      select type (p1)
        class is(inherit2)
         print*,101
        class is(base)
         print*,102
        class is(inherit1)
         print*,103
        type is (inherit1)
         allocate(obj,source=p1)
        type is(base)
         print*,104
        type is(inherit2)
         print*,105
      end select

      if(obj%i1 == p1%i1) then
       print*,'pass'
      else
       print*,105
      endif
end subroutine sub
