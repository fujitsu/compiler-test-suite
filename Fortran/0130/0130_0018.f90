#define TYPE1 complex(4)
#define TYPE2 complex(8)

subroutine sub(res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  integer,parameter :: n=200
  TYPE1,dimension(n) :: res1,x,a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y,b1,b2,b3,b4,b5
  TYPE1 :: tmp1a 
  TYPE2 :: tmp1b
  do i=1,n
     tmp1a = (a1(i)+x(i)) * (a2(i)+x(i)) * (a3(i)+x(i)) * (a4(i)+x(i)) * (a5(i)+x(i))
     res1(i) = tmp1a + &
          (a1(i)+x(i)) + (a2(i)+x(i)) + (a3(i)+x(i)) + (a4(i)+x(i)) + (a5(i)+x(i)) + &
          (a1(i)-x(i)) + (a2(i)-x(i)) + (a3(i)-x(i)) + (a4(i)-x(i)) + (a5(i)-x(i))
     tmp1b = (b1(i)+y(i)) * (b2(i)+y(i)) * (b3(i)+x(i)) * (b4(i)+y(i)) * (b5(i)+y(i))
     res2(i) = tmp1b + tmp1a + &
          (b1(i)+y(i)) + (b2(i)+y(i)) + (b3(i)+y(i)) + (b4(i)+y(i)) + (b5(i)+y(i)) + &
          (b1(i)-y(i)) + (b2(i)-y(i)) + (b3(i)-y(i)) + (b4(i)-y(i)) + (a5(i)-y(i))
  enddo
end subroutine sub

subroutine make_result(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  TYPE1,dimension(n) :: res1,x,a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y,b1,b2,b3,b4,b5
  TYPE1 :: tmp1a 
  TYPE2 :: tmp1b
  do i=1,n
     tmp1a = (a1(i)+x(i)) * (a2(i)+x(i)) * (a3(i)+x(i)) * (a4(i)+x(i)) * (a5(i)+x(i))
     res1(i) = tmp1a + &
          (a1(i)+x(i)) + (a2(i)+x(i)) + (a3(i)+x(i)) + (a4(i)+x(i)) + (a5(i)+x(i)) + &
          (a1(i)-x(i)) + (a2(i)-x(i)) + (a3(i)-x(i)) + (a4(i)-x(i)) + (a5(i)-x(i))
     tmp1b = (b1(i)+y(i)) * (b2(i)+y(i)) * (b3(i)+x(i)) * (b4(i)+y(i)) * (b5(i)+y(i))
     res2(i) = tmp1b + tmp1a + &
          (b1(i)+y(i)) + (b2(i)+y(i)) + (b3(i)+y(i)) + (b4(i)+y(i)) + (b5(i)+y(i)) + &
          (b1(i)-y(i)) + (b2(i)-y(i)) + (b3(i)-y(i)) + (b4(i)-y(i)) + (a5(i)-y(i))
  enddo
end subroutine make_result

subroutine init(n, &
               res1, res2, &
               x, y, &
               a1,a2,a3,a4,a5, &
               b1,b2,b3,b4,b5)
  TYPE1,dimension(n) :: res1,x, a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y, b1,b2,b3,b4,b5
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
     y(i) = i+11
  enddo
end subroutine init

subroutine result_check(n, res1, res2, rres1, rres2)
  TYPE1,dimension(n) :: res1, rres1
  TYPE2,dimension(n) :: res2, rres2
  integer(kind=4)::i
  do i=1,N
     if ( (.not.is_equal_r4(real(rres1(i)), real(res1(i)))) .or. &
          (.not.is_equal_r4(imag(rres1(i)), imag(res1(i)))) ) then
        print *, "NG:", i, rres1(i), res1(i)
        exit
     end if
     if ( (.not.is_equal_r8(real(rres2(i)), real(res2(i)))) .or. &
          (.not.is_equal_r8(imag(rres2(i)), imag(res2(i)))) ) then
        print *, "NG:", i, rres2(i), res2(i)
        exit
     end if
  end do
  print *, "OK"

contains
  logical function is_equal_r4(a,b)
    real(4)::a,b
    real(4),parameter :: error=1.0E-6
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. error)
    else if ( b.eq.0 ) then
       is_equal_r4 = ( a .lt. error)
    else
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. error)
    end if
  end function is_equal_r4

  logical function is_equal_r8(a,b)
    real(8)::a,b
    real(8),parameter :: error=(1.0E-13,0)
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
  integer,parameter :: n=200
  TYPE1,dimension(n) :: res1,x, a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y, b1,b2,b3,b4,b5

  TYPE1,dimension(n) :: rres1,rx, ra1,ra2,ra3,ra4,ra5
  TYPE2,dimension(n) :: rres2,ry, rb1,rb2,rb3,rb4,rb5

  call init(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  call sub(res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)

  call init(n, rres1, rres2, rx, ry, ra1, ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)
  call make_result(n, rres1, rres2, rx, ry, ra1,ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)

  call result_check(n, res1,res2, rres1, rres2)

end program main
