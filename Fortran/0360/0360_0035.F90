program main
  real(kind=8),dimension(64)    :: r8a,r8b,res
  integer(kind=8),dimension(64) :: list

  call init(r8a,r8b,list,res,64)
  do i=1,2
     call r8i8(r8a,r8b,list)
  end do

  do i=1,64
     if(r8a(i) .ne. res(i)) then
        print *, "NG"
        write(6,*) r8a(i)
        write(6,*) res(i)
     endif
  enddo
  
  print *, "OK"
end program main

subroutine init(r8a,r8b,list,res,n)
  real(kind=8),dimension(1:n)    :: r8a,r8b,res
  integer(kind=8),dimension(1:n) :: list

  m = n + 1
  do i=1,n
     r8a(i)  = 0
     r8b(i)  = i
     list(i) = m - i
     res(i)  = m - i
  end do
end subroutine init


subroutine r8i8(r8a,r8b,list)
  real(kind=8),dimension(64)    :: r8a,r8b
  integer(kind=8),dimension(64) :: list
  
  do i=1,64
     r8a(i) = r8b(list(i))
  enddo
end subroutine r8i8
