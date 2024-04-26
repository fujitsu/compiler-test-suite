#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#define N (8)
#define DATA_TYPE real(kind=4)

subroutine sub_test(ans,r,s,m)
  integer(kind=4)::i,j
  integer::m
  DATA_TYPE,dimension(N,N)::ans,s
  DATA_TYPE,dimension(N)::r
  do j=1,N
     do i =1,N-m
        r(i+m) = r(i) + s(i,j)
     end do
  end do
  ans(1,1) = r(N/2)
end subroutine sub_test
subroutine sub(ans,r,s,m)
  integer(kind=4)::i,j
  integer::m
  DATA_TYPE,dimension(N,N)::ans,s
  DATA_TYPE,dimension(N)::r
  do j=1,N
     do i =1,N-m
        r(i+m) = r(i) + s(i,j)
     end do
  end do
  ans(1,1) = r(N/2)
end subroutine sub

subroutine sub_init(ans,res,r,s) 
  integer(kind=4)::k,i
  DATA_TYPE,dimension(N,N)::ans,res,s
  DATA_TYPE,dimension(N)::r
  do k=1, N
     r(k) = sin(1.1*k)
     do i=1, N
        s(i,k) = cos(1.1*k+i)
     end do
  end do
  ans = -1
  res = ans
end subroutine sub_init
   
subroutine sub_cmp(ans, res)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,res
  do j=1,N
     do i=1,N
        if (.not.is_equal_r4(ans(i,j), res(i,j))) then
           print *, "NG:", i,j, ans(i,j), res(i,j)
           exit
        end if
     end do
  end do
contains
  logical function is_equal_r4(a, b)
    real(kind=4)::a,b
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. PERMISSIBLE_ERROR_R4) 
    else 
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R4 )
    end if
  end function is_equal_r4

  logical function is_equal_r8(a, b)
    real(kind=8)::a,b
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. PERMISSIBLE_ERROR_R8) 
    else 
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R8 )
    end if
  end function is_equal_r8
end subroutine sub_cmp


program main
  DATA_TYPE,dimension(N,N)::ans,res,s
  DATA_TYPE,dimension(N)::r
  integer::m = 1
  call sub_init(ans,res,r,s)
  call sub_test(ans, r,s,m)
  call sub(res, r,s,m)
  call sub_cmp(ans, res)
  print *, "OK"
end program main
