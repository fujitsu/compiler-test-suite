integer c,x
!$OMP PARALLEL private(c)
    c=2
!$OMP PARALLEL shared(c)
    c=1
!$OMP END PARALLEL
!$OMP END PARALLEL
print *,'pass'
end
