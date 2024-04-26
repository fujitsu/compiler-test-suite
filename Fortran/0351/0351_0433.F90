program main
  real(kind=8),dimension(64) :: a, dest

  call init(a,dest)

  do i=1,2
     call test2(dest, a)
  enddo
  do i=1,64
     if(dest(i) .ne. a(i)+1) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(a,dest)
  real(kind=8),dimension(1:64) :: a, dest

  do i=1,64
     a(i) = i
     dest(i) = 0_8
  enddo
end subroutine init


subroutine test2(dest,a)
  real(kind=8), dimension(64) :: dest,a

  do i=1,64
     dest(i) = a(i) + 1
  enddo
end subroutine test2

