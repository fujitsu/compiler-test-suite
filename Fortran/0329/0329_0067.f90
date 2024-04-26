integer,parameter::N=2
integer,parameter::M=N+1
integer :: i(N+1),j(N-1,N)
!$OMP THREADPRIVATE(i)
integer :: k(N+M+1,M+M-N+2)
integer :: ii
!$OMP parallel
!$OMP do
do ii=1,5+N-1
k(ii,:)=ii
end do
!$OMP end do
!$OMP end parallel

if(sum(k(:,:)) == 126 ) then
  print *,'pass'
else
  print *,'ng'
end if

end
