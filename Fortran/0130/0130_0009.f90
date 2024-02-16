#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#ifndef N
#define N (100)
#endif
#define DATA_TYPE real(kind=8)
#define DATA_TYPE2 real(kind=4)

subroutine tune_src(w,z,a,b,c,k,l,m,x,y,d,e,f,g,h,j)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::w,z,a,b,c,k,l,m
  DATA_TYPE2,dimension(N)::x,y,d,e,f,g,h,j
  do i=1,N
     w(i) = a(i) + b(i) - c(i)
     z(i) = k(i) + l(i) - m(i)
  end do
  do i=1,N
     x(i) = d(i) + e(i) - f(i) 
     y(i) = g(i) + h(i) - j(i)
  end do
end subroutine tune_src

subroutine test(w,z,a,b,c,k,l,m,x,y,d,e,f,g,h,j)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::w,z,a,b,c,k,l,m
  DATA_TYPE2,dimension(N)::x,y,d,e,f,g,h,j
  do i=1,N
     w(i) = a(i) + b(i) - c(i)
     x(i) = d(i) + e(i) - f(i) 
     y(i) = g(i) + h(i) - j(i)
     z(i) = k(i) + l(i) - m(i)
  end do
end subroutine test

subroutine init(w,z,a,b,c,k,l,m,x,y,d,e,f,g,h,j)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::w,z,a,b,c,k,l,m
  DATA_TYPE2,dimension(N)::x,y,d,e,f,g,h,j
  do i=1,N
     a(i) = sin(1.1*(i))
     b(i) = cos(1.1*(i))
     c(i) = sin(1.2*(i))
     k(i) = cos(1.2*(i))
     l(i) = sin(1.3*(i))
     m(i) = cos(1.3*(i))
     d(i) = sin(1.4*(i))
     e(i) = cos(1.4*(i))
     f(i) = sin(1.5*(i))
     g(i) = cos(1.5*(i))
     h(i) = sin(1.6*(i))
     j(i) = cos(1.6*(i))
     w(i) = -1
     z(i) = -1
     x(i) = -1
     y(i) = -1
  end do
end subroutine init

subroutine result_check_r4(ans,res)
  integer(kind=4)::i
  DATA_TYPE2,dimension(N)::ans,res
  do i=1,N
     if (.not.is_equal_r4(ans(i), res(i))) then
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
end subroutine result_check_r4

subroutine result_check_r8(ans,res)
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
end subroutine result_check_r8

program main
  DATA_TYPE,dimension(N)::w1,w2,z1,z2,a,b,c,k,l,m
  DATA_TYPE2,dimension(N)::x1,x2,y1,y2,d,e,f,g,h,j
  call init(w1,z1,a,b,c,k,l,m,x1,y1,d,e,f,g,h,j)
  call tune_src(w1,z1,a,b,c,k,l,m,x1,y1,d,e,f,g,h,j)

  call init(w2,z2,a,b,c,k,l,m,x2,y2,d,e,f,g,h,j)
  call test(w2,z2,a,b,c,k,l,m,x2,y2,d,e,f,g,h,j)

  call result_check_r8(w1,w2)
  call result_check_r8(z1,z2)
  call result_check_r4(x1,x2)
  call result_check_r4(y1,y2)

end program main
