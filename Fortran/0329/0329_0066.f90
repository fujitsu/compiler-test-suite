integer :: ii,jj,iiiiiiiiiiiiiiiiiiiiiiiiiiiiii
!$OMP THREADPRIVATE(iiiiiiiiiiiiiiiiiiiiiiiiiiiiii)
integer :: k(3,3)
!$OMP THREADPRIVATE(jj,ii)

integer :: i,j
!$OMP PARALLEL
!$OMP DO
do i=1,3
do j=1,3
k(i,j)=10*j+i
end do
end do
!$OMP END DO
!$OMP END PARALLEL

do ii=1,2
do jj=1,2
k(ii,jj)=k(ii,jj+1)+k(ii+1,jj)+k(ii+1,jj+1)
end do
end do

iiiiiiiiiiiiiiiiiiiiiiiiiiiiii=sum(k(:,:))

if ( iiiiiiiiiiiiiiiiiiiiiiiiiiiiii == 418 ) then
  print *,'pass'
else
  print *,'ng'
end if

end
