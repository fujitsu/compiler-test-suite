


subroutine bar(a,val1,val2)
  real,dimension(50,50) :: a
  integer :: val1,val2
  a(val1,val2) = val1+val2
end subroutine bar


subroutine sub01(a)
  real,dimension(50,50) :: a
  common /my_global/is,ie,iinc,js,je,jinc
  integer :: is,ie,iinc,js,je,jinc

!$omp do collapse(2)
   do j = js, je, jinc
      do i = is, ie, iinc
         call bar(a,i,j)
      enddo
   enddo
!$omp end do
end subroutine sub01


program main
  real,dimension(50,50) :: a
  common /my_global/is,ie,iinc,js,je,jinc
  integer :: is,ie,iinc,js,je,jinc
  
  is=1
  ie=10
  iinc=1
  js=1
  je=10
  jinc=1
  a=0
  
  call sub01(a)
  
  print *,sum(a)
  
end program main
