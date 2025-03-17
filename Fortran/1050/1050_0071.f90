
subroutine bar(a,val1,val2,val3)
  real,dimension(50,50,50) :: a
  integer :: val1,val2,val3
  a(val1,val2,val3) = val1+val2+val3
end subroutine bar


subroutine sub01(il,iu,is,jl,ju,js,kl,ku,ks,a)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks
  real,dimension(50,50,50) :: a
!$omp parallel
!$omp do collapse(2)
do k = kl, ku, ks
   do j = jl, ju, js
      do i = il, iu, is
         call bar(a,i,j,k)
      enddo
   enddo
enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(50,50,50) :: a
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck

si=1
ei=10
inci=1
sj=1
ej=10
incj=1
sk=1
ek=10
inck=1
a=0

call sub01(si,ei,inci,sj,ej,incj,sk,ek,inck,a)


print *,sum(a)

end program main
