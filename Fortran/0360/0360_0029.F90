program main
  integer(kind=4),dimension(64) :: i4a,i4b,res
  integer(kind=8),dimension(64) :: list

  call init(i4a,i4b,list,res,64)
  do i=1,2
     call i4i8(i4a,i4b,list)
  end do

  do i=1,64
     if(i4a(i) .ne. res(i)) then
        print *, "NG"
        print *, "i4a(",i,") = ",i4a(i)
        print *, "res(",i,") = ",res(i)
     endif
  enddo
  
  print *, "OK"
end program main

subroutine init(i4a,i4b,list,res,n)
  integer(kind=4),dimension(1:n) :: i4a,i4b,res
  integer(kind=8),dimension(1:n) :: list

  m = n + 1
  do i=1,n
     i4a(i)  = 0
     i4b(i)  = i
     list(i) = m - i
     res(i)  = m - i
  end do
end subroutine init


subroutine i4i8(i4a,i4b,list)
  integer(kind=4),dimension(64) :: i4a,i4b
  integer(kind=8),dimension(64) :: list
  
  do i=1,64
     i4a(i) = i4b(list(i))
  enddo
end subroutine i4i8
