subroutine target(dest1, dest2, src1, src2)
  real(kind=8),dimension(1:1024)::dest1, dest2, src1, src2
  integer::i
  do i=1, 1024
     dest1(i) = src1(i) * src2(i) + src1(i)
     dest2(i) = src1(i) / src2(i) * src2(i)
  end do
end subroutine target


subroutine master(dest1_res, dest2_res, src1_res, src2_res)
  real(kind=8),dimension(1:1024)::dest1_res, dest2_res, src1_res, src2_res
  integer::i
  do i=1,1024
     dest1_res(i) = src1_res(i) * src2_res(i) + src1_res(i)
     dest2_res(i) = src1_res(i) / src2_res(i) * src2_res(i)
  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=8),dimension(1:1024)::src1, src2
  integer::i
  do i=1,1024
    src1(i) = log(i*1.0 + 0.332)
    src2(i) = exp(-i*10E-5 + 0.3)
  end do
end subroutine init


subroutine check(dest1, dest2, dest1_res, dest2_res)  
  
  real(kind=8),dimension(1:1024)::dest1, dest2, dest1_res, dest2_res
  integer::i
  interface
     logical function equal_d(a,b)
       real(kind=8)::a,b
     end function equal_d
  end interface
  do i=1,1024
     if ( (equal_d(dest1(i), dest1_res(i)) .and. equal_d(dest2(i), dest2_res(i))) &
          .neqv. .true.)then
        print *, "NG"
        print *, dest1(i), dest1_res(i), dest2(i), dest2_res(i)
     endif
  end do
  print *, "OK"
end subroutine check


program main
  
  real(kind=8),dimension(1:1024)::dest1, dest2, src1, src2
  real(kind=8),dimension(1:1024)::dest1_res, dest2_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, dest2, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res, dest2_res, src1_res, src2_res);
  call check(dest1, dest2, dest1_res, dest2_res);
end  program main


logical function equal_d(a, b)
  real(kind=8)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. (1.0E-14)) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. (1.0E-14)) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
