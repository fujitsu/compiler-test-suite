subroutine sub(a,b,c)
  integer a,b,c,d
  d = 0
  do i = 1, 10
    if (a == 2) then
      c = c + a * a * 100;
      go to 100
    endif
    if (i > 6) then
      c = c + a * b
    endif
100 d = d + 1
  enddo
end subroutine

program main
  integer a,b,c
  a = 1
  b = 2
  c = 0
  call sub(a,b,c)
  if (c .eq. 8) then
    write(6,*) 'OK'
  else
    write(6,*) 'NG'
  endif
end program
