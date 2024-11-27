subroutine sub(a)
 integer a
 integer i
!$omp  parallel  shared(i)
!$omp  do simd
 do i=1,10
 b = b + a
 enddo
!$omp endparallel
!$omp  parallel do simd  shared(i)
 do i=1,10
 b = b + a
 enddo
 print *,b
end
call sub(1.5)
print *,"pass"
end
