subroutine sub(n, &
               res1, res2, &
               x, &
               a1,a2,a3,a4,a5, &
               b1,b2,b3,b4,b5)
  real(8),dimension(n) :: res1, res2
  real(8),dimension(n) :: x
  real(8),dimension(n) :: a1,a2,a3,a4,a5
  real(8),dimension(n) :: b1,b2,b3,b4,b5
  real(8) :: tmp1a,tmp2a,tmp3a,tmp1b,tmp2b,tmp3b
  do i=1,n
     tmp1a = (a1(i)+x(i)) * (a2(i)+x(i)) * (a3(i)+x(i)) * (a4(i)+x(i)) * (a5(i)+x(i))
     tmp2a = (a1(i)-x(i)) * (a2(i)-x(i)) * (a3(i)-x(i)) * (a4(i)-x(i)) * (a5(i)-x(i))
     tmp3a = (a1(i)*x(i)) * (a2(i)*x(i)) * (a3(i)*x(i)) * (a4(i)*x(i)) * (a5(i)*x(i))
     tmp1b = (b1(i)+x(i)) * (b2(i)+x(i)) * (b3(i)+x(i)) * (b4(i)+x(i)) * (b5(i)+x(i))
     tmp2b = (b1(i)-x(i)) * (b2(i)-x(i)) * (b3(i)-x(i)) * (b4(i)-x(i)) * (b5(i)-x(i))
     tmp3b = (b1(i)*x(i)) * (b2(i)*x(i)) * (b3(i)*x(i)) * (b4(i)*x(i)) * (b5(i)*x(i))
     res1(i) = tmp1a + tmp2a + tmp3a + tmp1b + tmp2b + tmp3b + & 
          (a1(i)+x(i)) + (a2(i)+x(i)) + (a3(i)+x(i)) + (a4(i)+x(i)) + (a5(i)+x(i)) + &
          (a1(i)-x(i)) + (a2(i)-x(i)) + (a3(i)-x(i)) + (a4(i)-x(i)) + (a5(i)-x(i)) + &
          (a1(i)*x(i)) + (a2(i)*x(i)) + (a3(i)*x(i)) + (a4(i)*x(i)) + (a5(i)*x(i)) + &
          (b1(i)+x(i)) + (b2(i)+x(i)) + (b3(i)+x(i)) + (b4(i)+x(i)) + (b5(i)+x(i)) + &
          (b1(i)-x(i)) + (b2(i)-x(i)) + (b3(i)-x(i)) + (b4(i)-x(i)) + (b5(i)-x(i)) + &
          (b1(i)*x(i)) + (b2(i)*x(i)) + (b3(i)*x(i)) + (b4(i)*x(i)) + (b5(i)*x(i)) 
     res2(i) = tmp1a - tmp2a - tmp3a - tmp1b - tmp2b - tmp3b - & 
          (a1(i)+x(i)) - (a2(i)+x(i)) - (a3(i)+x(i)) - (a4(i)+x(i)) - (a5(i)+x(i)) - &
          (a1(i)-x(i)) - (a2(i)-x(i)) - (a3(i)-x(i)) - (a4(i)-x(i)) - (a5(i)-x(i)) - &
          (a1(i)*x(i)) - (a2(i)*x(i)) - (a3(i)*x(i)) - (a4(i)*x(i)) - (a5(i)*x(i)) - &
          (b1(i)+x(i)) - (b2(i)+x(i)) - (b3(i)+x(i)) - (b4(i)+x(i)) - (b5(i)+x(i)) - &
          (b1(i)-x(i)) - (b2(i)-x(i)) - (b3(i)-x(i)) - (b4(i)-x(i)) - (b5(i)-x(i)) - &
          (b1(i)*x(i)) - (b2(i)*x(i)) - (b3(i)*x(i)) - (b4(i)*x(i)) - (b5(i)*x(i))
  enddo
end subroutine sub

subroutine make_result(n, &
               res1, res2, &
               x, &
               a1,a2,a3,a4,a5, &
               b1,b2,b3,b4,b5)
  real(8),dimension(n) :: res1, res2
  real(8),dimension(n) :: x
  real(8),dimension(n) :: a1,a2,a3,a4,a5
  real(8),dimension(n) :: b1,b2,b3,b4,b5
  real(8) :: tmp1a,tmp2a,tmp3a,tmp1b,tmp2b,tmp3b

  do i=1,n
     tmp1a = (a1(i)+x(i)) * (a2(i)+x(i)) * (a3(i)+x(i)) * (a4(i)+x(i)) * (a5(i)+x(i))
     tmp2a = (a1(i)-x(i)) * (a2(i)-x(i)) * (a3(i)-x(i)) * (a4(i)-x(i)) * (a5(i)-x(i))
     tmp3a = (a1(i)*x(i)) * (a2(i)*x(i)) * (a3(i)*x(i)) * (a4(i)*x(i)) * (a5(i)*x(i))
     tmp1b = (b1(i)+x(i)) * (b2(i)+x(i)) * (b3(i)+x(i)) * (b4(i)+x(i)) * (b5(i)+x(i))
     tmp2b = (b1(i)-x(i)) * (b2(i)-x(i)) * (b3(i)-x(i)) * (b4(i)-x(i)) * (b5(i)-x(i))
     tmp3b = (b1(i)*x(i)) * (b2(i)*x(i)) * (b3(i)*x(i)) * (b4(i)*x(i)) * (b5(i)*x(i))
     res1(i) = tmp1a + tmp2a + tmp3a + tmp1b + tmp2b + tmp3b + & 
          (a1(i)+x(i)) + (a2(i)+x(i)) + (a3(i)+x(i)) + (a4(i)+x(i)) + (a5(i)+x(i)) + &
          (a1(i)-x(i)) + (a2(i)-x(i)) + (a3(i)-x(i)) + (a4(i)-x(i)) + (a5(i)-x(i)) + &
          (a1(i)*x(i)) + (a2(i)*x(i)) + (a3(i)*x(i)) + (a4(i)*x(i)) + (a5(i)*x(i)) + &
          (b1(i)+x(i)) + (b2(i)+x(i)) + (b3(i)+x(i)) + (b4(i)+x(i)) + (b5(i)+x(i)) + &
          (b1(i)-x(i)) + (b2(i)-x(i)) + (b3(i)-x(i)) + (b4(i)-x(i)) + (b5(i)-x(i)) + &
          (b1(i)*x(i)) + (b2(i)*x(i)) + (b3(i)*x(i)) + (b4(i)*x(i)) + (b5(i)*x(i)) 
     res2(i) = tmp1a - tmp2a - tmp3a - tmp1b - tmp2b - tmp3b - & 
          (a1(i)+x(i)) - (a2(i)+x(i)) - (a3(i)+x(i)) - (a4(i)+x(i)) - (a5(i)+x(i)) - &
          (a1(i)-x(i)) - (a2(i)-x(i)) - (a3(i)-x(i)) - (a4(i)-x(i)) - (a5(i)-x(i)) - &
          (a1(i)*x(i)) - (a2(i)*x(i)) - (a3(i)*x(i)) - (a4(i)*x(i)) - (a5(i)*x(i)) - &
          (b1(i)+x(i)) - (b2(i)+x(i)) - (b3(i)+x(i)) - (b4(i)+x(i)) - (b5(i)+x(i)) - &
          (b1(i)-x(i)) - (b2(i)-x(i)) - (b3(i)-x(i)) - (b4(i)-x(i)) - (b5(i)-x(i)) - &
          (b1(i)*x(i)) - (b2(i)*x(i)) - (b3(i)*x(i)) - (b4(i)*x(i)) - (b5(i)*x(i))
  enddo
end subroutine make_result

subroutine init(n, &
               res1, res2, &
               x, &
               a1,a2,a3,a4,a5, &
               b1,b2,b3,b4,b5)
  real(8),dimension(n) :: res1, res2
  real(8),dimension(n) :: x
  real(8),dimension(n) :: a1,a2,a3,a4,a5
  real(8),dimension(n) :: b1,b2,b3,b4,b5
  do i=1,n
     res1(i) = 0
     res2(i) = 0
     a1(i) = i
     a2(i) = i+1
     a3(i) = i+2
     a4(i) = i+3
     a5(i) = i+4
     b1(i) = i+5
     b2(i) = i+6
     b3(i) = i+7
     b4(i) = i+8
     b5(i) = i+9
     x(i) = i+10
  enddo
end subroutine init

subroutine result_check(n, res1, res2, rres1, rres2)
  real(8),dimension(n) :: res1, res2
  real(8),dimension(n) :: rres1, rres2
  integer(kind=4)::i
  do i=1,N
     if (.not.is_equal_r8(rres1(i), res1(i))) then
        print *, "NG:", i, rres1(i), res1(i)
        exit
     end if
     if (.not.is_equal_r8(rres2(i), res2(i))) then
        print *, "NG:", i, rres2(i), res2(i)
        exit
     end if
  end do
  print *, "OK"

contains
  logical function is_equal_r8(a,b)
    real(kind=8)::a,b
    real(8),parameter :: error=1.0E-13
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. error)
    else if ( b.eq.0 ) then
       is_equal_r8 = ( a .lt. error)
    else
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. error)
    end if
  end function is_equal_r8

end subroutine result_check

program main
  integer,parameter :: n=100
  real(8),dimension(n) :: res1, res2
  real(8),dimension(n) :: x
  real(8),dimension(n) :: a1,a2,a3,a4,a5
  real(8),dimension(n) :: b1,b2,b3,b4,b5

  real(8),dimension(n) :: rres1, rres2
  real(8),dimension(n) :: rx
  real(8),dimension(n) :: ra1,ra2,ra3,ra4,ra5
  real(8),dimension(n) :: rb1,rb2,rb3,rb4,rb5

  call init(n, res1, res2, x, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  call sub(n, res1, res2, x, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)

  call init(n, rres1, rres2, rx, ra1,ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)
  call make_result(n, rres1, rres2, rx, ra1,ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)

  call result_check(n, res1,res2, rres1, rres2)

end program main
