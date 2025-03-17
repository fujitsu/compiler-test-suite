call sub(100)
print *, 'pass'
end

recursive subroutine sub(n)
integer n, nth
integer,dimension(100):: a

l = (n*(n+1))/2
if(n .ne. 1) then
if(n .ge. 94) then
  nth=2
else
  nth=1
endif
!$ call omp_set_max_active_levels(.true.)
!$ call omp_set_dynamic(.true.)
!$omp parallel private(a, k) num_threads(nth)
  do i=1, 100
    a(i) = i
  end do
  k = 0
  do i=1, n
    k = k+a(i)
  end do
  if(k .ne. l) then
    print *, 'NG'
  endif
  call sub(n-1)
!$omp end parallel
endif

end
