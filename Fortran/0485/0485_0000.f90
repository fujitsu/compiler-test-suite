i3=1
a=1
b=1
!$omp  parallel
!$omp  taskgroup
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 do i4=1,10
 do i5=1,10
 b = b + a
 enddo
 enddo
 enddo
 enddo
 enddo
!$omp endsimd
!$omp  endtaskgroup
!$omp  endparallel
print *,"pass"
end
