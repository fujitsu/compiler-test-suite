program main
  real(kind=4),dimension(64) :: dest

  call init(dest)

  do i=1,2
     call test1(dest)
  enddo
  do i=1,64
     if(dest(i) .ne. 1) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest)
  real(kind=4),dimension(1:64) :: dest

  do i=1,64
     dest(i) = 0_4
  enddo
end subroutine init


subroutine test1(dest)
  real(kind=4), dimension(64) :: dest

  do i=1,64
     dest(i) = 1
  enddo
end subroutine test1


