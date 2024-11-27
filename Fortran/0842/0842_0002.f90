subroutine sub(a)
 common /com/i
 integer a
!$omp  parallel  shared(/com/)
!$omp  do simd
 do i=1,10
 b = b + a
 enddo
!$omp endparallel
!$omp  parallel do simd shared(/com/)
 do i=1,10
 b = b + a
 enddo
 print *,b
end
call sub(1.5)
print *,"pass"
end
