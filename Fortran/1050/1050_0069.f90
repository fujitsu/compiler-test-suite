
subroutine bar(a,val1,val2)
  real,dimension(50,50) :: a
  integer :: val1,val2
  a(val1,val2) = val1+val2
end subroutine bar


subroutine sub01(a)
  real,dimension(50,50) :: a
  integer :: is,ie,iinc,js,je,jinc

  is=1
  ie=10
  iinc=1
  js=1
  je=10
  jinc=1


!$omp parallel
!$omp do collapse(2)
   do j = js, je, jinc
      do i = is, ie, iinc
         call bar(a,i,j)
      enddo
   enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(50,50) :: a
a=0
call sub01(a)

print *,sum(a)

end program main
