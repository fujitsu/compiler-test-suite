integer,save::  i,i2,i3,b,a=1
!$omp  simd  collapse(2)
 do i=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp end simd
print *,"pass"
end
