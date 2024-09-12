integer ::a=1, b=1, i1=1, i2=1, i3=1
!$omp  parallel
!$omp  sections
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp  endsimd
!$omp  endsections
!$omp  endparallel
if ( i1.ne.11) print *,"ng1"
if ( i2.ne.11) print *,"ng2"
if ( i3.ne.1 ) print *,"ng3"
print *,"pass"
end
