#define N 64

program main
  real(kind=8),dimension(1:N) :: a,b,res
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call glo(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call pro(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call pro2(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call pro3(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call pro4(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call loop(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

  do i=1,2
     call loop2(a,b,mask,10)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(a,b,res,mask)
  real(kind=8),dimension(1:N) :: a,b,res
  integer,dimension(1:N) :: mask
  do i=1,N
     a(i) = 0._8
     b(i) = real(i,kind=8)
     mask(i) = 1_4
  enddo
  do i=1,N
     res(i) = b(10);
  enddo

end subroutine init


subroutine glo(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine pro(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine pro2(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine pro3(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine pro4(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine loop(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end

subroutine loop2(a,b,mask,k)
  real(kind=8),dimension(1:N) :: a,b
  integer,dimension(1:N) :: mask
  do i=1,N
    if (mask(i).ne. 0_4) then
     a(i) = b(k)
    endif
  enddo
end
