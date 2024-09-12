subroutine sub(a)
integer,save:: i,b
integer:: a
 b=1
!$omp  parallel do simd  shared(i)
 do i1=1,10
   b = b + a
 enddo
end
call sub(2)
print *,'pass'
end

