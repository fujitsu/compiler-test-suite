program main
  real(8), dimension(:), pointer :: a,b
  allocate(a(100))
  allocate(b(100))

  do i=1, 100
     a(i) = i
  enddo

  do i=1, 100
     b(i) = i
  enddo

  do i=1,100
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
  deallocate(a)
  deallocate(b)
end program
