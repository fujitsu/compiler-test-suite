#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)
#define I8_MAX 9223372036854775807_8

#define N (8)
#define DATA_TYPE real(kind=4)

subroutine sub_test(ans,r,s,m)
  integer(kind=8)::i,j,m
  DATA_TYPE,dimension(N,N)::ans,r,s

  if(m.eq.0) return
  do j=1,I8_MAX
     do i =1,N
        ans(i,j) = r(i,j) + s(i,j)
     end do
  end do
end subroutine sub_test

subroutine sub(ans,r,s,m)
  integer(kind=8)::i,j,m
  DATA_TYPE,dimension(N,N)::ans,r,s

  if(m.eq.0) return
  do j=1,I8_MAX
     do i =1,N
        ans(i,j) = r(i,j) + s(i,j)
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
  integer(kind=8)::m = 0
  call sub_init(ans,res,r,s)
  call sub_test(ans, r,s, m)
  call sub(res, r,s, m)
  call sub_cmp(ans, res)
  print *, "OK"
end program main
