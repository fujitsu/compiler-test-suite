i1=1
i2=2
!$omp parallel private(i1,i2)
!$omp dosimd   collapse(1)
 do i1=1,10
 do i2=1,10
 enddo
 enddo
!$omp  end dosimd
!$omp  endparallel
print *,'pass'
end
