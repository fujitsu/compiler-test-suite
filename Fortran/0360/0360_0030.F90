program main
  integer(kind=8),dimension(64) :: i8a,i8b,res
  integer(kind=4),dimension(64) :: list

  call init(i8a,i8b,list,res,64)
  do i=1,2
     call i8i4(i8a,i8b,list)
  end do

  do i=1,64
     if(i8a(i) .ne. res(i)) then
        print *, "NG"
        write(6,*) i8a(i)
        write(6,*) res(i)
     endif
  enddo
  
  print *, "OK"
end program main

subroutine init(i8a,i8b,list,res,n)
  integer(kind=8),dimension(1:n) :: i8a,i8b,res
  integer(kind=4),dimension(1:n) :: list

  m = n + 1
  do i=1,n
     i8a(i)  = 0
     i8b(i)  = i
     list(i) = m - i
     res(i)  = m - i
  end do
end subroutine init


subroutine i8i4(i8a,i8b,list)
  integer(kind=8),dimension(64) :: i8a,i8b
  integer(kind=4),dimension(64) :: list
  
  do i=1,64
     i8a(i) = i8b(list(i))
  enddo
end subroutine i8i4
