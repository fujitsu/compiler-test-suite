#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#ifndef N
#define N (100)
#endif
#define DATA_TYPE real(kind=8)

subroutine tune_src(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  do j=1,N
     do i=1,N
        r(i,j) = r(i,j) + s(i,j)
     end do
     do i=1,N
        ans(i,j) = r(i,j) + s(i,j)
     end do
  end do
end subroutine tune_src

subroutine test(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  do j=1,N
     do i=1,N
        r(i,j) = r(i,j) + s(i,j)
        ans(i,j) = r(i,j) + s(i,j)
     end do
  end do
end subroutine test

subroutine init(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  do j=1,N
     do i=1,N
        r(i,j) = sin(1.1*(i+j))
        s(i,j) = cos(1.1*(i+j))
        ans(i,j) = -1
     enddo
  enddo
end subroutine init

subroutine result_check(ans,res)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,res
  do j=1,N
     do i=1,N
        if (.not.is_equal_r8(ans(i,j), res(i,j))) then
           print *, "NG:", i, ans(i,j), res(i,j)
           exit
        end if
     end do
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
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  call init(ans,r,s)
  call tune_src(ans,r,s)

  call init(res,r,s)
  call test(res,r,s)

  call result_check(ans,res)

end program main
