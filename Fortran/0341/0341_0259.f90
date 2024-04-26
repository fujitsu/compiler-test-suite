program main
  real(8) r
  real(8),dimension(1:100,1:100) :: a
  real(8),dimension(1:100,1:100) :: b
  real(8),dimension(1:100,1:100) :: c
  data a/10000*0.123456789/
  data b/10000*9.876543210/
  data c/10000*0.505050505/
  r=0

  do k=1,100
    do j=1,100
      do i=1,100
        r=r+a(i,j)+b(i,k)+c(k,j)
      enddo
    enddo
  enddo

  print *,r
end
