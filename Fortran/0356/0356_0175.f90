subroutine sub(a,b,c,d)
  integer a,b,c,d
  do j = 1, 10
    do i = 1, 10
      if (i > 6 .and. j == 3) then
        d = c + a * b
      endif
    enddo
  enddo
end subroutine

program main
  integer a,b,c,d
  a = 1
  b = 2
  c = 3
  d = 0
  call sub(a,b,c,d)
  if (d .eq. 5) then
    write(6,*) 'OK'
  else
    write(6,*) 'NG',d
  endif
end program
