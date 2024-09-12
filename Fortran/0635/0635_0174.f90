program main
  call test_int
  call test_real
end

subroutine test_int
  integer(4),dimension(10):: a 
  do k=1,2
    do j=1,5,1.0
      do i=1,10
        a(i) = i+j+k
      enddo
    enddo
  enddo
  print *,a
end

subroutine test_real
  real(4),dimension(10):: a 
  do k=1,2
    do j=1,5,1.0
      do i=1,10
        a(i) = i+j+k
      enddo
    enddo
  enddo
  print *,a
end
