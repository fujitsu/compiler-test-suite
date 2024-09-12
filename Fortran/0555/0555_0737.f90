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
      class (base),pointer :: p1(:,:)
  end subroutine
end interface 

      class (base),pointer :: tgt1(:,:)
      allocate(inherit1::tgt1(4,6))
      tgt1%i1 = 5
      tgt1(4,1)%i1 = 50
      call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod
      class (base),pointer :: p1(:,:)
      
      select type (p1)
        class is(inherit2)
         print*,'101'
        class is(base)
         print*,'103'
        class is (inherit1)
         call insub(p1)
         if(p1(4,1)%i1 == 60 ) then
           print*,'pass'
         else
           print*,105
         endif
        type is(base)
         print*,'102'
        type is(inherit2)
         print*,'106'
      end select
contains
 subroutine insub(dum)
  class(base)::dum(3,*)
  if(dum(1,2)%i1 /= 50) print*,100
  dum(1,2)%i1=60
 end subroutine insub
end subroutine sub
