subroutine sub(a,b,c)
  integer a,b,c
  c = 8
  do i = 1, 10
    if (.false.) then
      c = c + a * b * 100
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
