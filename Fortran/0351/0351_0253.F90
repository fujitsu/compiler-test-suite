program main
  logical(kind=8),dimension(64) :: a,b,res
  interface
     subroutine test(a,b,c,res)
        logical(kind=8), dimension(64) :: a,b,res
        logical(kind=8),value :: c
     end subroutine test
  end interface

  call init(a,b)
  do i=1,2
     call test(a,b,.FALSE._8, res)
  enddo
  do i=1,64
     if(.TRUE._8 .neqv. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b)
  logical(kind=8),dimension(64) :: a,b

  do i=1,64
     a(i) = .FALSE._8
     b(i) = .TRUE._8
  enddo
end subroutine init


subroutine test(a,b,c,res)
  logical(kind=8), dimension(64) :: a,b,res
  logical(kind=8) :: tmp
  logical(kind=8),value :: c

  do i=1,64
     if(a(i) .neqv. b(i)) then
       tmp = .TRUE._8
     else
       tmp = c
     endif
     res(i) = tmp
  enddo
end subroutine test
