subroutine sub(a,b,c,d)
  complex a,b,c,d
  do j = 1, 10
    do i = 1, 10
      if (i > 6 .and. j == 3) then
        d = c + a * b
      endif
    enddo
  enddo
end subroutine

program main
  complex a,b,c,d
  a = (1.0,0.0)
  b = (2.0,0.0)
  c = (3.0,0.0)
  d = (0.0,0.0)
  call sub(a,b,c,d)
  if (real(d) .eq. 5.0) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG',real(d)
  endif
end program main
