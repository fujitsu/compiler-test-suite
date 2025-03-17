
subroutine bar(a,val1,val2,val3)
  real,dimension(10,10,10) :: a
  integer :: val1,val2,val3
  a(val1,val2,val3) = val1+val2+val3
end subroutine bar


subroutine sub01(a)
  real,dimension(10,10,10) :: a
  integer :: is,ie,iinc,js,je,jinc
  integer :: ks,ke,kinc

  is=1
  ie=10
  iinc=1
  js=1
  je=10
  jinc=1
  ks=1
  ke=10
  kinc=1

!$omp parallel
!$omp do collapse(3)
   do k = ks, ke, kinc
      do j = js, je, jinc
         do i = is, ie, iinc
            call bar(a,i,j,k)
         end do
      enddo
   enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(10,10,10) :: a

call sub01(a)

print *,sum(a)

end program main
