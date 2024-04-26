  call sub1
  call sub2
  print*,"OK"
end program

subroutine sub1
  logical*4 ss1/.true./
  logical*4 i4ss/.true./
  logical*8 i8ss/.true./
  logical*4 a(10)/10*.true./
  logical*8 b(10)/10*.true./

  
  do i=4,5
     ss1=ss1 .and. a(i)
  enddo
  !$omp simd reduction(.and.:i4ss)
  
  do i=4,5
     i4ss=i4ss.and.a(i)
  enddo
  !$omp simd reduction(.and.:i8ss)
  
  do i=4,5
     i8ss=i8ss.and.b(i)
  enddo
  if (ss1 .and. i4ss .and. i8ss) then
     else
     print*,"NG1", ss1, i4ss, i8ss
  endif
end subroutine sub1

subroutine sub2
  logical*4 ss1/.true./
  logical*4 i4ss/.true./
  logical*8 i8ss/.true./
  logical*4 a(10)/10*.true./
  logical*8 b(10)/10*.true./
  a(5) = .false.
  b(5) = .false.

  
  do i=4,5
     ss1=ss1 .and. a(i)
  enddo
  !$omp simd reduction(.and.:i4ss)
  
  do i=4,5
     i4ss=i4ss.and.a(i)
  enddo
  !$omp simd reduction(.and.:i8ss)
  
  do i=4,5
     i8ss=i8ss.and.b(i)
  enddo
  if (ss1 .or. i4ss .or. i8ss) then
     print*,"NG1", ss1, i4ss, i8ss
  endif
end subroutine sub2
