#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#ifndef N
#define N (100)
#endif
#define DATA_TYPE real(kind=8)

subroutine tune_src(x,y,z,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::x,y,z
  DATA_TYPE,dimension(N)::a1,b1,c1,d1,e1,f1
  DATA_TYPE,dimension(N)::a2,b2,c2,d2,e2,f2
  do i=1,N
     x(i) = ( a1(i) * b1(i) * c1(i) + d1(i) ) * e1(i) - f1(i)
  end do
  do i=1,N
     y(i) = ( a2(i) + b2(i) ) * ( c2(i) + d2(i) ) + ( e2(i) + f2(i) ) * ( c2(i) + d2(i) )
     z(i) = x(i) + y(i)
  end do
end subroutine tune_src

subroutine test(x,y,z,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::x,y,z
  DATA_TYPE,dimension(N)::a1,b1,c1,d1,e1,f1
  DATA_TYPE,dimension(N)::a2,b2,c2,d2,e2,f2
  do i=1,N
     x(i) = ( a1(i) * b1(i) * c1(i) + d1(i) ) * e1(i) - f1(i)
     y(i) = ( a2(i) + b2(i) ) * ( c2(i) + d2(i) ) + ( e2(i) + f2(i) ) * ( c2(i) + d2(i) )
     z(i) = x(i) + y(i)
  end do
end subroutine test

subroutine init(x1,y1,z1,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::x1,y1,z1,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2
  do i=1,N
     a1(i) = sin(1.1*(i))
     b1(i) = cos(1.1*(i))
     c1(i) = sin(1.2*(i))
     d1(i) = cos(1.2*(i))
     e1(i) = sin(1.3*(i))
     f1(i) = cos(1.3*(i))
     a2(i) = sin(1.4*(i))
     b2(i) = cos(1.4*(i))
     c2(i) = sin(1.5*(i))
     d2(i) = cos(1.5*(i))
     e2(i) = sin(1.6*(i))
     f2(i) = cos(1.6*(i))
     x1(i) = -1
     y1(i) = -1
     z1(i) = -1
  enddo
end subroutine init

subroutine result_check(ans,res)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::ans,res
  do i=1,N
     if (.not.is_equal_r8(ans(i), res(i))) then
        print *, "NG:", i, ans(i), res(i)
        exit
     end if
  end do
  print *, "OK"
contains
  logical function is_equal_r4(a,b)
    real(kind=4)::a,b
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. PERMISSIBLE_ERROR_R4)
    else if ( b.eq.0 ) then
       is_equal_r4 = ( a .lt. PERMISSIBLE_ERROR_R4)
    else
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R4 )
    end if
  end function is_equal_r4

  logical function is_equal_r8(a,b)
    real(kind=8)::a,b
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. PERMISSIBLE_ERROR_R8)
    else if ( b.eq.0 ) then
       is_equal_r8 = ( a .lt. PERMISSIBLE_ERROR_R8)
    else
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R8 )
    end if
  end function is_equal_r8
end subroutine result_check

program main
  DATA_TYPE,dimension(N)::x1,y1,z1,x2,y2,z2
  DATA_TYPE,dimension(N)::a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2
  call init(x1,y1,z1,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)
  x2 = x1
  y2 = y1
  z2 = z1
  call tune_src(x1,y1,z1,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)
  call test(x2,y2,z2,a1,b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,f2)

  call result_check(x1,x2)
  call result_check(y1,y2)
  call result_check(z1,z2)

end program main
