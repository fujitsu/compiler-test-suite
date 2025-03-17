
subroutine bar(a,val1,val2)
  real,dimension(50,50) :: a
  integer :: val1,val2
  a(val1,val2) = val1+val2
end subroutine bar


subroutine sub01(is,ie,iinc,js,je,jinc,a)
  integer :: is,ie,iinc,js,je,jinc
  real,dimension(50,50) :: a
!$omp do collapse(2)
   do j = js, je, jinc
      do i = is, ie, iinc
         call bar(a,i,j)
      enddo
   enddo
!$omp end do
end subroutine sub01


program main
real,dimension(50,50) :: ma
integer :: mis,mie,miinc,mjs,mje,mjinc

mis=1
mie=10
miinc=1
mjs=1
mje=10
mjinc=1
ma=0

call sub01(mis,mie,miinc,mjs,mje,mjinc,ma)

print *,sum(ma)

end program main
