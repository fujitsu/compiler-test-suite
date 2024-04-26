subroutine sequential01(a,v,n)
  real(8),dimension(1:n) :: a
  real(8) :: v
  do i=1,n
     a(i) = v
  enddo
end subroutine

subroutine sequential02(aa,v,n)
  real(8),dimension(1:n,1:n) :: aa
  real(8) :: v
  do j=1,n
     do i=1,n
        aa(i,j) = v
     enddo
  enddo
end subroutine

subroutine sequential03(a,n)
  real(8),dimension(1:n) :: a
  do i=1,n
     a(i) = 0.1_8
  enddo
end subroutine

subroutine sequential04(aa,n)
  real(8),dimension(1:n,1:n) :: aa
  do j=1,n
     do i=1,n
        aa(i,j) = 0.1_8
     enddo
  enddo
end subroutine

program main
  integer,parameter :: n=100
  real(8) :: v
  real(8),dimension(1:n) :: a,b
  real(8),dimension(1:n,1:n) :: aa,bb
  real(8),parameter :: error=0.00000001_8
  a=0.2_8
  aa=0.2_8
  v=0.1_8
  call sequential01(a,v,n)
  call sequential02(aa,v,n)
  b=0.2_8
  bb=0.2_8
  call sequential03(b,n)
  call sequential04(bb,n)
  if (abs((sum(a)+sum(aa))-(sum(b)+sum(bb))) .le. error) then
     print *,"ok"
  else
     print *,"ng",(sum(a)+sum(aa)),"!=",(sum(b)+sum(bb))
  endif
end program
