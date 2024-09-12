yy=1
yy=yy
vv=1
vv=vv
!$omp atomic capture
yy=max(1,yy)
vv=yy
!$omp end atomic
print *,'pass'
end
