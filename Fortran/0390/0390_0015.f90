integer c(5)
!$OMP PARALLEL 
!$OMP do            firstprivate(c) 
do ii=1,1
if (any(lbound(c)/=1))call errtra
end do
!$OMP END DO
!$OMP END PARALLEL
print *,'pass'
end