

subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar


subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc,a)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  real,dimension(10,10,10,10) :: a
!$omp parallel
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
!$omp end parallel
end subroutine sub01


program main
real,dimension(10,10,10,10) :: ma
integer :: mis,mie,miinc,mjs,mje,mjinc
integer :: mks,mke,mkinc,mls,mle,mlinc

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

print *,sum(ma)

end program main
