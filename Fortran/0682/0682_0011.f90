program main
  integer*8 i,j,s
  interface
     subroutine sub(i)
       integer*8,value::i
     end subroutine sub
  end interface
  s = 0
  !$omp simd
  do i=1,10000
     j = i
     call sub(j)
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (s .eq. 10000) then
  print *, 'PASS'
  else
     print *, "NG", s
  endif
end program main

subroutine sub(i)
  integer*8,value::i
  integer*8,save::j=1
  if (i.ne.j) stop "NG"
  j=j+1
end subroutine sub
