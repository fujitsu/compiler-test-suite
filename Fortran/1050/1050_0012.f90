
subroutine bar(a,val1,val2,val3,val4,val5)
  real,dimension(10,5,10,10,2) :: a
  integer :: val1,val2,val3,val4,val5
  a(val1,val2,val3,val4,val5) = val1+val2+val3+val4+val5
end subroutine bar


subroutine sub01(il,iu,is,jl,ju,js,kl,ku,ks,lll,llu,lls,ml,mu,ms,a)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks,lll,llu,lls,ml,mu,ms
  real,dimension(10,5,10,10,2) :: a
  integer :: i,j,k,ll,m
!$omp do collapse(4) lastprivate(i,j,k,ll,m)
  do m = ml, mu, ms
     do ll = lll, llu, lls
        do k = kl, ku, ks
           do j = jl, ju, js
              do i = il, iu, is
                 call bar(a,i,j,k,ll,m)
              end do
           end do
        enddo
     enddo
  enddo
!$omp end do

print *,"hhhh:",i,j,k,ll,m
print *,sum(a)

end subroutine sub01



program main
real,dimension(10,5,10,10,2) :: a
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck,sll,ell,incll,sm,em,incm

si=1
ei=10
inci=1
sj=1
ej=5
incj=2
sk=1
ek=10
inck=1
sll=1
ell=10
incll=1
sm=1
em=2
incm=1

a=0_8


call sub01(si,ei,inci,sj,ej,incj,sk,ek,inck,sll,ell,incll,sm,em,incm,a)

print *,sum(a)

end program main
