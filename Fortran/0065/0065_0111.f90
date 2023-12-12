subroutine sub2(c, i)
  integer c,i
  c = c * i
end subroutine
subroutine sub(a,b,c)
  integer a,b,c
  do j = 1, 10
    call sub2(c,1)
    do i = 1, 10
      if (i > 6 .and. j == 3) then
        c = c + a * b
      endif
    enddo
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
