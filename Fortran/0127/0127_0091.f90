subroutine sub(xx)
  integer(8)::xx
  xx = 3
end subroutine sub
program main
  integer(8)::x,j,k,xx
  integer(8)::v1,v2,v3
  integer(8),dimension(2)::y,z

  x=0_8
  j=0_8
  k=0_8
  v1=1_8
  v2=2_8
  v3=1_8
  z=0.
  y=0.

  call sub(xx)
  do k=2_8,xx,1_8
     do j=1_8,2_8
        v2=z(j)
        y(j) = j
        if (x<j) then
           v3=j+v2
           z(j) = y(j)
        endif
        v1=v2
        z(j) = v3 + v2 + y(j)
        v2 = v3+v1+z(j)+y(j)
     enddo
  enddo

  if (v1 .ne. 4) then
     print *,"ng"
  endif
  if (v2 .ne. 24) then
     print *,"ng"
  endif
  if (v3 .ne. 6) then
     print *,"ng"
  endif
  if (z(1) .ne. 6) then
     print *,"ng"
  endif
  if (y(1) .ne. 1) then
     print *,"ng"
  endif
  print *,"ok"
end program main
