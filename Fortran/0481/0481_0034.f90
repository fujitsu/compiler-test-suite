integer vv(10)
integer :: yy(10)
vv=1
yy=1
vv=vv
yy=yy
!$omp atomic capture
vv(1)=yy(1)
yy(1)=max(1,1)
!$omp end atomic
print *,'pass'
end
