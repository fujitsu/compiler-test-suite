do i=1,2
!$OMP PARALLEL PRIVATE(a)
a=10
!$OMP END PARALLEL
end do
print *,'pass'
end
