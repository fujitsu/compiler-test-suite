program main
  logical(kind=8),dimension(64) :: a,b,c,res
  call init(a,b,c)
  do i=1,2
     call test(a,b,c,res)
  enddo
  do i=1,64
     if(a(i) .neqv. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c)
  logical(kind=8),dimension(64) :: a,b,c

  do i=1,64
     a(i) = .FALSE._8
     b(i) = .TRUE._8
     c(i) = .TRUE._8
  enddo
end subroutine init


subroutine test(a,b,c,res)
  logical(kind=8), dimension(64) :: a,b,c,res
  logical(kind=8)::n
  n = .TRUE._8

  do i=1,64
     if(c(i).eqv. n) then
       res(i) = a(i)
     else
       res(i) = b(i)
     endif
  enddo
end subroutine test
