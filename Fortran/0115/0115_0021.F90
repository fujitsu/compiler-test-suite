#define N 32
  
subroutine target(dest1, dest2, src1, src2)
  real(kind=8),dimension(1:N,1:N)::dest1, dest2, src1, src2
  integer::i,j
  do i=1,N
     do j=1,N
        dest1(j,i) = src1(j,i) * src2(j,i) + src1(j,i)
        dest2(j,i) = src1(j,i) / src2(j,i)
     end do
  end do
end subroutine target


subroutine master(dest1_res, dest2_res, src1_res, src2_res)
  real(kind=8),dimension(1:N,1:N)::dest1_res, dest2_res, src1_res, src2_res
  integer::i,j
  do i=1,N
     do j=1,N
        dest1_res(j,i) = src1_res(j,i) * src2_res(j,i) + src1_res(j,i)
        dest2_res(j,i) = src1_res(j,i) / src2_res(j,i)
     end do
  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=8),dimension(1:N,1:N)::src1, src2
  integer::i,j
  do i=1,N
     do j=1,N
        src1(j,i) = sin(i*1.0 - 0.1*j)
        src2(j,i) = cos(i*0.5 - 0.3*j)
     end do
  end do
end subroutine init


subroutine check(dest1, dest2, dest1_res, dest2_res)  
  real(kind=8),dimension(1:N,1:N)::dest1, dest2, dest1_res, dest2_res
  integer::i,j
  interface
     logical function equal_d(a,b)
       real(kind=8)::a,b
     end function equal_d
  end interface
  do i=1,N
     do j=1,N
        if ( (equal_d(dest1(j,i), dest1_res(j,i)) .and. equal_d(dest2(j,i), dest2_res(j,i))) &
             .neqv. .true.)then
           print *, "NG"
        endif
     end do
  end do
  print *, "OK"
end subroutine check


program main
  real(kind=8),dimension(1:N,1:N)::dest1, dest2, src1, src2
  real(kind=8),dimension(1:N,1:N)::dest1_res, dest2_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, dest2, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res, dest2_res, src1_res, src2_res);
  call check(dest1, dest2, dest1_res, dest2_res);
end  program main

#define ERR_D (1.0E-14)
logical function equal_d(a, b)
  real(kind=8)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
