program main
  integer a, b, c, d, e, f
  integer aa, bb, cc, dd, ee, ff
  integer index
  integer omp_get_num_threads
  integer nt
  common /b1/ a, b
  common /b2/ c, d
  common /b3/ e, f
  common /i1/ index
!$omp threadprivate(/b1/, /b2/, /b3/)

  index = 0
  a = 0; b = 0; c = 0; d = 0; e = 0; f = 0

!$omp parallel copyin(/b1/, /b2/, /b3/)
!$omp single
  nt = omp_get_num_threads()
!$omp end single
  call sub1
!$omp end parallel
  call sub1

  aa = a; bb = b; cc = c; dd = d; ee = e; ff = f
  a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; index = 0
  call sub1
  call sub1

  if((aa .ne. a) .or. (bb .ne. b) .or. (cc .ne. c) .or. &
     (dd .ne. d) .or. (ee .ne. e) .or. (ff .ne. f)) then
    print *, 'NG', nt
  else
    print *, 'ok'
  end if
end program main

subroutine sub1()
  integer a, b, c, d, e, f
  integer index
  common /b1/ a, b
  common /b2/ c, d
  common /b3/ e, f
  common /i1/ index
!$omp threadprivate(/b1/, /b2/, /b3/)

!$omp master
  index = index+1
!$omp end master
  a = a+index
  b = b+a+index
  c = c+b+a+index
  d = d+c+b+a+index
  e = e+d+c+b+a+index
  f = f+e+d+c+b+a+index
end subroutine
