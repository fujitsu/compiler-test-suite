#define TYPE1 type(s1)
#define TYPE2 type(s1)
#define TYPE1M real(8)
#define TYPE2M real(8)

module smod
  type s1
    TYPE1M :: p
    TYPE1M :: q
  end type s1 
end module smod

subroutine sub(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  use smod
  TYPE1,dimension(n) :: res1,x,a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y,b1,b2,b3,b4,b5
  TYPE1 :: tmp1a 
  TYPE2 :: tmp1b
  do i=1,n
     tmp1a%p = (a1(i)%p+x(i)%p) * (a2(i)%p+x(i)%p) * (a3(i)%p+x(i)%p) * (a4(i)%p+x(i)%p) * (a5(i)%p+x(i)%p)
     res1(i)%p = tmp1a%p + &
          (a1(i)%p+x(i)%p) + (a2(i)%p+x(i)%p) + (a3(i)%p+x(i)%p) + (a4(i)%p+x(i)%p) + (a5(i)%p+x(i)%p) + &
          (a1(i)%p-x(i)%p) + (a2(i)%p-x(i)%p) + (a3(i)%p-x(i)%p) + (a4(i)%p-x(i)%p) + (a5(i)%p-x(i)%p)
     tmp1b%q = (b1(i)%q+y(i)%q) * (b2(i)%q+y(i)%q) * (b3(i)%q+x(i)%p) * (b4(i)%q+y(i)%q) * (b5(i)%q+y(i)%q)
     res2(i)%q = tmp1b%q + tmp1a%p + &
          (b1(i)%q+y(i)%q) + (b2(i)%q+y(i)%q) + (b3(i)%q+y(i)%q) + (b4(i)%q+y(i)%q) + (b5(i)%q+y(i)%q) + &
          (b1(i)%q-y(i)%q) + (b2(i)%q-y(i)%q) + (b3(i)%q-y(i)%q) + (b4(i)%q-y(i)%q) + (a5(i)%p-y(i)%q)
  enddo
end subroutine sub

subroutine make_result(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  use smod
  TYPE1,dimension(n) :: res1,x,a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y,b1,b2,b3,b4,b5
  TYPE1 :: tmp1a 
  TYPE2 :: tmp1b
  do i=1,n
     tmp1a%p = (a1(i)%p+x(i)%p) * (a2(i)%p+x(i)%p) * (a3(i)%p+x(i)%p) * (a4(i)%p+x(i)%p) * (a5(i)%p+x(i)%p)
     res1(i)%p = tmp1a%p + &
          (a1(i)%p+x(i)%p) + (a2(i)%p+x(i)%p) + (a3(i)%p+x(i)%p) + (a4(i)%p+x(i)%p) + (a5(i)%p+x(i)%p) + &
          (a1(i)%p-x(i)%p) + (a2(i)%p-x(i)%p) + (a3(i)%p-x(i)%p) + (a4(i)%p-x(i)%p) + (a5(i)%p-x(i)%p)
     tmp1b%q = (b1(i)%q+y(i)%q) * (b2(i)%q+y(i)%q) * (b3(i)%q+x(i)%p) * (b4(i)%q+y(i)%q) * (b5(i)%q+y(i)%q)
     res2(i)%q = tmp1b%q + tmp1a%p + &
          (b1(i)%q+y(i)%q) + (b2(i)%q+y(i)%q) + (b3(i)%q+y(i)%q) + (b4(i)%q+y(i)%q) + (b5(i)%q+y(i)%q) + &
          (b1(i)%q-y(i)%q) + (b2(i)%q-y(i)%q) + (b3(i)%q-y(i)%q) + (b4(i)%q-y(i)%q) + (a5(i)%p-y(i)%q)
  enddo
end subroutine make_result

subroutine init(n, &
               res1, res2, &
               x, y, &
               a1,a2,a3,a4,a5, &
               b1,b2,b3,b4,b5)
  use smod
  TYPE1,dimension(n) :: res1,x, a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y, b1,b2,b3,b4,b5
  do i=1,n
     res1(i)%p = 0
     res1(i)%q = 0
     res2(i)%p = 0
     res2(i)%q = 0
     a1(i)%p = i
     a1(i)%q = 0
     a2(i)%p = i+1
     a2(i)%q = 0
     a3(i)%p = i+2
     a3(i)%q = 0
     a4(i)%p = i+3
     a4(i)%q = 0
     a5(i)%p = i+4
     a5(i)%q = 0
     b1(i)%p = 0
     b1(i)%q = i+5
     b2(i)%p = 0
     b2(i)%q = i+6
     b3(i)%p = 0
     b3(i)%q = i+7
     b4(i)%p = 0
     b4(i)%q = i+8
     b5(i)%p = 0
     b5(i)%q = i+9
     x(i)%p = i+10
     x(i)%q = 0
     y(i)%p = 0
     y(i)%q = i+11
  enddo
end subroutine init

subroutine result_check(n, res1, res2, rres1, rres2)
  use smod
  TYPE1,dimension(n) :: res1, rres1
  TYPE2,dimension(n) :: res2, rres2
  integer(kind=4)::i
  do i=1,N
     if (.not.is_equal_r8(rres1(i)%p, res1(i)%p)) then
        print *, "NG:", i, rres1(i)%p, res1(i)%p
        exit
     end if
     if (.not.is_equal_r8(rres2(i)%q, res2(i)%q)) then
        print *, "NG:", i, rres2(i)%q, res2(i)%q
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
  use smod
  integer,parameter :: n=100
  TYPE1,dimension(n) :: res1,x, a1,a2,a3,a4,a5
  TYPE2,dimension(n) :: res2,y, b1,b2,b3,b4,b5

  TYPE1,dimension(n) :: rres1,rx, ra1,ra2,ra3,ra4,ra5
  TYPE2,dimension(n) :: rres2,ry, rb1,rb2,rb3,rb4,rb5

  call init(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)
  call sub(n, res1, res2, x, y, a1,a2,a3,a4,a5, b1,b2,b3,b4,b5)

  call init(n, rres1, rres2, rx, ry, ra1, ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)
  call make_result(n, rres1, rres2, rx, ry, ra1,ra2,ra3,ra4,ra5, rb1,rb2,rb3,rb4,rb5)

  call result_check(n, res1,res2, rres1, rres2)

end program main
