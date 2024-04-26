
subroutine sub(n)
  integer n
  real(8),dimension(1:100,1:100) :: a
  real(8),dimension(1:100,1:100) :: b
  real(8),dimension(1:100,1:100) :: c
  data a/10000*0/, b/10000*1/, c/10000*2/

  do k=1,n
    do j=1,n
      do i=1,n
        a(i,j)=a(i,j)+b(i,k)+c(k,j)
      enddo
    enddo
  enddo

  print *,sum(a)
end subroutine

program main
  integer n
  n = 100
  call sub(n)
end
