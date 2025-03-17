
subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar


subroutine sub01(il,iu,is,jl,ju,js,kl,ku,ks,lll,llu,lls,a)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks,lll,llu,lls
  real,dimension(10,10,10,10) :: a
  integer :: i,j,k,ll
!$omp do collapse(3) lastprivate(i,j,k,ll)
do ll = lll, llu, lls
   do k = kl, ku, ks
      do j = jl, ju, js
         do i = il, iu, is
            call bar(a,i,j,k,ll)
         end do
      enddo
   enddo
enddo
!$omp end do

print *,"hhhh:",i,j,k,ll
print *,sum(a)

end subroutine sub01



program main
real,dimension(10,10,10,10) :: a
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck,sll,ell,incll

si=1
ei=10
inci=1
sj=1
ej=10
incj=1
sk=1
ek=10
inck=1
sll=1
ell=10
incll=1

call sub01(si,ei,inci,sj,ej,incj,sk,ek,inck,sll,ell,incll,a)

print *,sum(a)

end program main
