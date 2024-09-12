program main
  real(8),dimension(1:10) :: a,b
  data b/1,1,0,0,1,0,1,1,0,1/
  call sub(a,b,10)
end

subroutine sub(a,b,n)
  real(8),dimension(1:10) :: a,b
  real(8),dimension(1:10) :: v1
  v1(:) = 0.0
  do i = 1,10
    a(i) = 2.0 + i
  enddo
  do i = 1,n
    do j=1,10
      if (b(j).eq.1) then  
        v1(j) = a(i)
      else
        v1(j) = -1.0
      endif
    enddo
  enddo
  print *,v1
end subroutine
