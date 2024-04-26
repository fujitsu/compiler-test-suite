#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#define N 256
#define DATA_TYPE real(kind=4)

subroutine sub_test(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  do j=2,(N-1)/2
     do i =2,(N-1)/2
        ans(i,j) = ans(i+j-1,j+j-1) + r(i+j-1,j) + s(i,i+j-1)
     end do
  end do
end subroutine sub_test

subroutine sub(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  
  do j=2,(N-1)/2
     do i =2,(N-1)/2
        ans(i,j) = ans(i+j-1,j+j-1) + r(i+j-1,j) + s(i,i+j-1)
     end do
  end do
end subroutine sub


subroutine sub_init(ans,res,r,s) 
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  do i=1, N
     do j=1, N
        r(i,j) = sin(1.1*(i+j))
        s(i,j) = cos(1.1*(i-j))
     enddo
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
           print *, "NG:", j,i, ans(i,j), res(i,j)
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
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  call sub_init(ans,res,r,s)
  call sub_test(ans, r,s)
  call sub(res, r,s)
  call sub_cmp(ans, res)
  print *, "OK"
end program main
