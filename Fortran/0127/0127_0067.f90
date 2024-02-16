subroutine sub(xx)
  integer(8)::xx
  xx = 3
end subroutine sub
program main
  integer(8)::x,j,k,xx
  integer(8)::v1,v2,v3

  x=0_8
  j=0_8
  k=0_8
  v1=1_8
  v2=2_8
  v3=1_8

  call sub(xx)
  do k=2_8,xx,1_8
     do j=1_8,2_8
        v2=0
        if (x<j) then
           v3=j+v2
        endif
        v1=v2
        v2 = v3+v1
     enddo
  enddo

  if (v1 .ne. 0) then
     print *,"ng"
  endif
  if (v2 .ne. 2) then
     print *,"ng"
  endif
  if (v2 .ne. 2) then
     print *,"ng"
  endif
  print *,"ok"
end program main
