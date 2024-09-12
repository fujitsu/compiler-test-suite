program main
  integer,dimension(1:100,1:100):: a

  do j=1,100
    do i=1,2
      a(i,j) = 1
    enddo
  enddo

  call sub(a)

end program main

subroutine sub(a)
  integer,dimension(1:100,1:100):: a
  print *,a(1,1)
end subroutine
