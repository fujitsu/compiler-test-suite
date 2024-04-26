program main
  integer(kind=8),dimension(64) :: dest
  integer(kind=8) :: b

  interface
      subroutine test41(dest, b)
      integer(kind=8),dimension(64) :: dest
      integer(kind=8),value :: b
      end subroutine test41
  end interface

  call init(b,dest)

  do i=1,2
     call test41(dest, b)
  enddo
  do i=1,64
     if(dest(i) .ne. b) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(b,dest)
  integer(kind=8),dimension(1:64) :: dest
  integer(kind=8) :: b

  do i=1,64
     b = i
     dest(i) = 0_8
  enddo
end subroutine init


subroutine test41(dest,b)
  integer(kind=8),dimension(64) :: dest
  integer(kind=8),value :: b

  do i=1,64
     dest(i) = b
  enddo
end subroutine test41

