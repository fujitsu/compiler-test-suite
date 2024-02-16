subroutine sub(xx)
  integer(8)::xx
  xx = 3
end subroutine sub
program main
  integer(8)::x,j,k,xx
  real(4),dimension(2)::v1,v2,v3

  x=0_8
  j=0_8
  k=0_8
  v1=1_8
  v2=2_8
  v3=1_8

  call sub(xx)
  do k=2_8,xx,1_8
     do j=1_8,2_8
        v2(j)=0
        if (x<j) then
           v3(j)=j+v2(j)
        endif
        v1(j)=v2(j)
        v2(j) = v3(j)+v1(j)
     enddo
  enddo

  if (v1(1) .ne. 0) then
     print *,"ng"
  endif
  if (v2(1) .ne. 1) then
     print *,"ng"
  endif
  if (v3(1) .ne. 1) then
     print *,"ng"
  endif
  print *,"ok"
end program main
