subroutine sub(aa,bb,cc)
  real(4) :: aa,bb,cc
  real(4) :: a,b,c
  integer(4) :: i,j
  a = 0.0
  b = 0.0
  c = 0.0
  do i = 1,10
    do j = 1,10
      a = aa
      b = bb
      c = cc
    enddo
  enddo
  if (a .ne. 1.50000000) then
     write(6,*) "NG"
  else if (b .ne. 2.50000000) then
     write(6,*) "NG"
  else if (c .ne. 3.00000000) then
     write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end subroutine

call sub(1.5, 2.5, 3.0)
end
