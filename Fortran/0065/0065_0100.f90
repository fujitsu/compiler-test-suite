subroutine sub(a,b,c)
  real*8 a,b,c
  do i = 1, 10
    if (i > 6) then
      c = c + a * b
    endif
  enddo
end subroutine

program main
  real*8 a,b,c
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
