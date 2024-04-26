#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#define N (8)
#define DATA_TYPE real(kind=4)

subroutine sub_test(ans,r,s)
  integer(kind=4)::j,k
  DATA_TYPE,dimension(N,N)::ans,r,s
  k = 1
100 continue
     do j=1,N
        ans(j,k) = r(j,k) + s(j,k)
     end do
     k = k + 1
     if(k.le.N) goto 100
end subroutine sub_test
subroutine sub(ans,r,s)
  integer(kind=4)::j,k
  DATA_TYPE,dimension(N,N)::ans,r,s
  k = 1
100 continue
     do j=1,N
        ans(j,k) = r(j,k) + s(j,k)
     end do
     k = k + 1
     if(k.le.N) goto 100
end subroutine sub

subroutine sub_init(ans,res,r,s) 
  integer(kind=4)::j,k
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  do k=1, N
     do j=1, N
        r(j,k) = sin(1.1*(+j*k))
        s(j,k) = cos(1.1*(-j*k))
     end do
  end do
  ans = -1
  res = ans
end subroutine sub_init
   
subroutine sub_cmp(ans, res)
  integer(kind=4)::j,k
  DATA_TYPE,dimension(N,N)::ans,res
  do k=1,N
     do j=1,N
        if (.not.is_equal_r4(ans(j,k), res(j,k))) then
           print *, "NG:",j,k, ans(j,k), res(j,k)
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
