program main
  real(kind=8),dimension(64) :: a
  real(kind=8)::res     

  call init(a,res)
  do i=1,2
     call test(a,res)
  enddo
  if(a(64) .ne. res) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res)
  real(kind=8),dimension(1:64) :: a
  real(kind=8)::res     

  res  = real(min(10,64),kind=8)


  do i=1,64
     a(i) = real(i,kind=8)
  enddo
end subroutine init


subroutine test(a,res)
  real(kind=8), dimension(1:64) :: a
  real(kind=8)::res     

  do i=1,64
     if (res .lt. a(i)) then
        res = a(i)
     endif
  enddo
end subroutine test

