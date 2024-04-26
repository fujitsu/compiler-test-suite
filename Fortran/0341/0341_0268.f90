
subroutine sub(n)
  integer n
  real(8) r
  real(8),dimension(1:100,1:100) :: a
  real(8),dimension(1:100,1:100) :: b
  real(8),dimension(1:100,1:100) :: c
  data a/10000*0.987654321/, b/10000*0.123456789/, c/10000*0.0505050505/
  r = 0

  do k=1,n
    do j=1,n
      do i=1,n
        r=r+a(i,j)+b(i,k)+c(k,j)
      enddo
    enddo
  enddo

  print *,r
end subroutine

program main
  integer n
  n = 100
  call sub(n)
end
