subroutine test(a,n)
  real(kind=4),dimension(1:10,1:10) :: a,b

  b = 1.
  do l=1,n
     do j=1,n
        a(j,l) = b(1,j)
     enddo
  enddo
end subroutine test

program main
  real(kind=4),dimension(1:10,1:10) :: a

  call test(a,10)
  
  do i=1,10
     do j=1,10
        if (a(j,i) .ne. 1.) then
           print *, "NG"
        endif
     enddo
  enddo

  print *, "OK"
end program main
