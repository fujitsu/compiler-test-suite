program main
  real(kind=4),dimension(64)    :: r4a,r4b,res
  integer(kind=8),dimension(64) :: list

  call init(r4a,r4b,list,res,64)
  do i=1,2
     call r4i8(r4a,r4b,list)
  end do

  do i=1,64
     if(r4a(i) .ne. res(i)) then
        print *, "NG"
        print *, "r4a(",i,") = ",r4a(i)
        print *, "res(",i,") = ",res(i)
     endif
  enddo
  
  print *, "OK"
end program main

subroutine init(r4a,r4b,list,res,n)
  real(kind=4),dimension(1:n)    :: r4a,r4b,res
  integer(kind=8),dimension(1:n) :: list

  m = n + 1
  do i=1,n
     r4a(i)  = 0
     r4b(i)  = i
     list(i) = m - i
     res(i)  = m - i
  end do
end subroutine init


subroutine r4i8(r4a,r4b,list)
  real(kind=4),dimension(64)    :: r4a,r4b
  integer(kind=8),dimension(64) :: list
  
  do i=1,64
     r4a(i) = r4b(list(i))
  enddo
end subroutine r4i8
