#define N 1024
  
subroutine target(dest1, dest2, src1, src2)
  real(kind=4),dimension(1:N)::dest1, dest2, src1, src2
  integer::i
  do i=1,N
     dest1(i) = src1(i) + src2(i) + real(i)
     dest2(i) = src1(i) / src2(i) * dest1(i)
     continue
     temp = src1(i) * dest1(i)
     dest1(i) = dest1(i) + dest2(i) + temp
     cycle
     dest2(i) = dest2(i) + dest1(i)
  end do
end subroutine target


subroutine master(dest1, dest2, src1, src2)
  real(kind=4),dimension(1:N)::dest1, dest2, src1, src2
  real(kind=4):: temp
  integer::i
  do i=1,N
     dest1(i) = src1(i) + src2(i) + real(i)
     dest2(i) = src1(i) / src2(i) * dest1(i)
     continue
     temp = src1(i) * dest1(i)
     dest1(i) = dest1(i) + dest2(i) + temp
     cycle
     dest2(i) = dest2(i) + dest1(i)
  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=4),dimension(1:N)::src1, src2
  integer::i
  do i=1,N
    src1(i) = sin(i*1.0)*cos(i*1.0)
    src2(i) = tan(i*0.5)
  end do
end subroutine init


subroutine check(dest1, dest2, dest1_res, dest2_res)  
  real(kind=4),dimension(1:N)::dest1, dest2, dest1_res, dest2_res
  integer::i
  interface
     logical function equal_s(a,b)
       real(kind=4)::a,b
     end function equal_s
  end interface
  do i=1,N
     if ( (equal_s(dest1(i), dest1_res(i)) .and. equal_s(dest2(i), dest2_res(i))) &
          .neqv. .true.)then
        print *, i, dest1(i),dest1_res(i), dest2(i),dest2_res(i)
        print *, "NG"
     endif
  end do
  print *, "OK"
end subroutine check


program main
  real(kind=4),dimension(1:N)::dest1, dest2, src1, src2
  real(kind=4),dimension(1:N)::dest1_res, dest2_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, dest2, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res, dest2_res, src1_res, src2_res);
  call check(dest1, dest2, dest1_res, dest2_res);
end  program main


#define ERR_S (1.0E-6)
logical function equal_s(a, b) 
  real(kind=4)::a,b
  if ( a.eq.b ) then
     equal_s = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_S) then
        equal_s = .true.
     else
        equal_s = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_S) then
        equal_s = .true.
     else
        equal_s = .false.
     end if
  end if
end function equal_s
