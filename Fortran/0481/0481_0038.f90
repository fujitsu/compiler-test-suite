integer vv
integer :: yy
vv=1
yy=1
vv=vv
yy=yy
!$omp atomic capture
vv=yy
yy=max(1,1,1 ,yy)
!$omp end atomic
print *,'pass'
end
