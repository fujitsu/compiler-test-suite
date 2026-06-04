

program reduction_test
  parameter(N=32)
  logical*2 l2(N),l2t,l2a(10)
  l2t=.true.
  l2a=.true.

!$omp simd
  do i=1,N
     l2(i) = .true.
  enddo

!$omp simd reduction(.and.:l2t)
  do i=1,N
     l2t = l2t .and. l2(i)
  enddo
  write(6,*) l2t

!$omp simd reduction(.and.:l2a)
  do i=1,N-1
     l2a(2) = l2a(2) .and. l2(i)
  enddo
  write(6,*) l2a(2)

!$omp simd reduction(.and.:l2t)
  do i=1,N-2
     if (i>10) then
        l2t = l2t .and. l2(i)
     endif
  enddo
  write(6,*) l2t

!$omp simd reduction(.and.:l2a)
  do i=1,N-3
     if (i>10) then
        l2a(2) = l2a(2) .and. l2(i)
     endif
  enddo
  write(6,*) l2a(2)

!$omp simd reduction(.and.:l2t)
  do i=1,N-4
     if (l2(1)) then
        l2t = l2t .and. l2(i)
     endif
  enddo
  write(6,*) l2t

!$omp simd reduction(.and.:l2a)
  do i=1,N-5
     if (l2(1)) then
        l2a(2) = l2a(2) .and. l2(i)
     endif
  enddo
  write(6,*) l2a(2)

end program reduction_test
