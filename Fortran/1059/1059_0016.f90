call sub(1000)
print *, 'pass'
end

recursive subroutine sub(n)
integer n
integer,dimension(1000):: a

l = (n*(n+1))/2
if(n .ne. 1) then
!$ call omp_set_max_active_levels(.true.)
!$omp parallel private(a, k)
  do i=1, 1000
    a(i) = i
  end do
  k = 0
  do i=1, n
    k = k+a(i)
  end do
  if(k .ne. l) then
    print *, 'NG'
  endif
!$omp end parallel
  call sub(n-1)
endif

end

