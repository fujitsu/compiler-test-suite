program main
  implicit none
  integer*4 i,j,s
  interface
     subroutine sub(i)
       integer*4,intent(in)::i
     end subroutine sub
  end interface
  s = 0
  !$omp simd private(j)
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
  integer*4,intent(in)::i
  integer*4,save::j=1
  if (i.ne.j) then ; print *,"NG",i,j ; stop ; endif
  j=j+1
end subroutine sub
