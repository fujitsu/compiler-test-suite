program main
  real(8),dimension(1:10,1:10) :: a
  real(8),dimension(1:10,1:10) :: b
  real(8),dimension(1:10,1:10) :: c
  data a/100*1/,b/100*1/,c/100*1/
  j = 5

  do i=1,10
    a(i,j)=a(i,j)+b(i,j)+c(j,i)
  enddo

  print *,sum(a)
end
