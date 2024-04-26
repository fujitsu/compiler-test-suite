program main
  real(8),dimension(1:10) :: a
  real(8),dimension(1:10,1:10,1:10,1:10) :: b
  data a/10*0/, b/10000*1/

  do l=1,10
    do k=1,10
      do j=1,10
        do i=1,10
          a(i)=a(i)+b(l,i,j,k)
        enddo
      enddo
    enddo
  enddo

  print *,sum(a)
end
