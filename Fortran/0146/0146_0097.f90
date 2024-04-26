module m1
contains
subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar
subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc,a)
  integer :: is(1),ie(1),iinc(1),js(1),je(1),jinc(1),ks(1),ke(1),kinc(1),ls(1),le(1),linc(1)
  real,dimension(10,10,10,10) :: a
target::is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
!$omp do collapse(4)
  do l = ls(1), le(1), linc(1)
     do k = ks(1), ke(1), kinc(1)
        do j = js(1), je(1), jinc(1)
           do i = is(1), ie(1), iinc(1)
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
integer,pointer :: mis(:),mie(:),miinc(:),mjs(:),mje(:),mjinc(:)
integer,pointer :: mks(:),mke(:),mkinc(:),mls(:),mle(:),mlinc(:)
allocate( mis(1),mie(1),miinc(1),mjs(1),mje(1),mjinc(1), mks(1),mke(1),mkinc(1),mls(1),mle(1),mlinc(1))

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
