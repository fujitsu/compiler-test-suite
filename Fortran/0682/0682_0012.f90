subroutine test(m)
  integer*8 i,s
  integer*8,value:: m
  interface
     subroutine sub(i)
       integer*8,value::i
     end subroutine sub
  end interface
  s = 0
  !$omp simd
  do i=1,10000
     call sub(m)
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (s .eq. 10000) then
  print *, 'PASS'
  else
     print *, "NG", s
  endif
end subroutine test

subroutine sub(i)
  integer*8,value::i
  if (i.ne.1) stop "NG"
end subroutine sub

interface
subroutine test(m)
  integer*8,value:: m
end subroutine test
end interface
call test(1_8)
end
