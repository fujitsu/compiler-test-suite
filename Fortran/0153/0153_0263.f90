module m1
contains
subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar
subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc,a)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  real,dimension(10,10,10,10) :: a
target::is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
!$omp do collapse(4)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              call bar(a,i,j,k,l)
           end do
        enddo
     end do
  enddo
!$omp end do
end subroutine sub01
end

program main
use m1
real,dimension(10,10,10,10) :: ma
integer,pointer :: mis,mie,miinc,mjs,mje,mjinc
integer,pointer :: mks,mke,mkinc,mls,mle,mlinc
allocate( mis,mie,miinc,mjs,mje,mjinc, mks,mke,mkinc,mls,mle,mlinc)

mis=1
mie=10
miinc=1
mjs=1
mje=10
mjinc=1
mks=1
mke=10
mkinc=1
mls=1
mle=10
mlinc=1

call sub01(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc,ma)

if (abs(sum(ma)-220000.000)>1) print *,101
print *,'pass'

end program main
