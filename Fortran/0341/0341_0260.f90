program main
  real(8),dimension(1:10) :: a
  real(8),dimension(1:100,1:100) :: b
  real(8),dimension(1:100,1:100) :: c
  data a/10*0/, b/10000*1/, c/10000*2/

  do j=1,10
    do i=1,10
      a(i)=a(i)+b(i,j)+c(j,i)
    enddo
  enddo

  print *,sum(a)
end
