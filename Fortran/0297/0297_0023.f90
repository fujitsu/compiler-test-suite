subroutine indirect01(a,k,v,n)
  real(8),dimension(1:n) :: a
  integer(8),dimension(1:n) :: k
  real(8) :: v
  do i=1,n
     a(k(i)) = v
  enddo
end subroutine

subroutine indirect02(aa,k,v,n)
  real(8),dimension(1:n,1:n) :: aa
  integer(8),dimension(1:n) :: k
  real(8) :: v
  do j=1,n
     do i=1,n
        aa(k(i),k(j)) = v
     enddo
  enddo
end subroutine

subroutine indirect03(a,k,n)
  real(8),dimension(1:n) :: a
  integer(8),dimension(1:n) :: k
  do i=1,n
     a(k(i)) = 0.1_8
  enddo
end subroutine

subroutine indirect04(aa,k,n)
  real(8),dimension(1:n,1:n) :: aa
  integer(8),dimension(1:n) :: k
  do j=1,n
     do i=1,n
        aa(k(i),k(j)) = 0.1_8
     enddo
  enddo
end subroutine

program main
  integer,parameter :: n=10
  real(8) :: v
  real(8),dimension(1:n) :: a1,a2
  real(8),dimension(1:n,1:n) :: aa1,aa2
  real(8),parameter :: error=0.00000001_8
  integer(8),dimension(1:n) :: k
  a1=0.2_8
  aa1=0.2_8
  v=0.1_8
  k=(/(i,i=n,1,-1)/)
  call indirect01(a1,k,v,n)
  call indirect02(aa1,k,v,n)
  a2=0.2_8
  aa2=0.2_8
  call indirect03(a2,k,n)
  call indirect04(aa2,k,n)
  if (abs(sum(a1)-sum(a2)) .le. error) then
     print *,"ok"
  else
     print *,"ng",sum(a1),"!=",sum(a2)
  endif
  if (abs(sum(aa1)-sum(aa2)) .le. error) then
     print *,"ok"
  else
     print *,"ng",sum(aa1),"!=",sum(aa2)
  endif
end program
