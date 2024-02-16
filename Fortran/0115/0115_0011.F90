#define N 1024
  
subroutine target(dest1, dest2, src1, src2)
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2
  integer::i
  do i=1,N
     dest1(i) = src1(i) * src2(i)
     dest2(i) = src1(i) / src2(i) + src2(i)
  enddo

  do concurrent(i=1:N)
     block
       dest1(i) = src1(i) * src2(i) + src1(i) * src2(i)
       dest2(i) = src1(i) / src2(i) + src2(i)
       if (mod(i,4) == 0) then
          cycle
       endif
       dest1(i) = src1(i) / src2(i) + src2(i) + dest1(i)
     end block
  end do
  
end subroutine target


subroutine master(dest1, dest2, src1, src2)
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2
  integer::i
  do i=1,N
     dest1(i) = src1(i) * src2(i)
     dest2(i) = src1(i) / src2(i) + src2(i)
  enddo
  do i=1,N
     dest1(i) = src1(i) * src2(i) + src1(i) * src2(i)
     dest2(i) = src1(i) / src2(i) + src2(i)
     if (mod(i,4) == 0) then
        cycle
     endif
     dest1(i) = src1(i) / src2(i) + src2(i) + dest1(i)

  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=8),dimension(1:N)::src1, src2
  integer::i
  do i=1,N
    src1(i) = sin(i*1.0 + 0.1)
    src2(i) = cos(i*0.5 + 0.3)
  end do
end subroutine init


subroutine check(dest1, dest2, dest1_res, dest2_res)  
  real(kind=8),dimension(1:N)::dest1, dest2, dest1_res, dest2_res
  integer::i
  interface
     logical function equal_s(a,b)
       real(kind=4)::a,b
     end function equal_s
     logical function equal_d(a,b)
       real(kind=8)::a,b
     end function equal_d
  end interface
  do i=1,N
     if ( (equal_d(dest1(i), dest1_res(i)) .and. equal_d(dest2(i), dest2_res(i))) &
          .neqv. .true.)then
        print *, "NG"
     endif
  end do
  print *, "OK"
end subroutine check


program main
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2
  real(kind=8),dimension(1:N)::dest1_res, dest2_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, dest2, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res, dest2_res, src1_res, src2_res);
  call check(dest1, dest2, dest1_res, dest2_res);
end  program main


#define ERR_S (1.0E-7)
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
