subroutine sub(a,b,c)
  integer a,b,c
  if (c > 6) then
    c = c + a * b - 1
  endif
end subroutine

program main
  integer a,b,c
  a = 1
  b = 2
  c = 7
  call sub(a,b,c)
  if (c .eq. 8) then
    write(6,*) 'OK'
  else
    write(6,*) 'NG'
  endif
end program
