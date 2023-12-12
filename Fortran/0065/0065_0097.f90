subroutine sub(x,y,z)
  integer a,b,c
  integer x,y,z
  a = 1
  b = 2
  c = 3
  x = 1
  y = 2
  z = 8
  do i = 1, 10
    if (i > 6) then
      c = c + a * b
    endif
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
