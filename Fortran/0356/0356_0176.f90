subroutine sub(a,b,c,d)
  real a,b,c,d
  do j = 1, 10
    do i = 1, 10
      if (i > 6 .and. j == 3) then
        d = c + a * b
      endif
    enddo
  enddo
end subroutine

program main
  real a,b,c,d
  a = 1.0
  b = 2.0
  c = 3.0
  d = 0.0
  call sub(a,b,c,d)
  if (d .eq. 5.0) then
    write(6,*) 'OK'
  else
    write(6,*) 'NG'
  endif
end program
