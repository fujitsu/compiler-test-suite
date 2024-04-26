#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#define N (16)
#define DATA_TYPE logical(kind=8)

subroutine sub_test(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  do j=1,N
     do i =1,N
        ans(i,j) = r(i,j).neqv.s(i,j)
     end do
  end do
end subroutine sub_test

subroutine sub(ans,r,s)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,r,s
  
  do j=1,N
     do i =1,N
        ans(i,j) = r(i,j).neqv.s(i,j)
     end do
  end do
end subroutine sub


subroutine sub_init(ans,res,r,s) 
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  do i=1, N
     do j=1, N
        r(i,j) = (mod(i,2) .eq. mod(j,3))
        s(i,j) = (mod(i,3) .ne. mod(j,4))
     enddo
  end do
  ans = .false.
  res = ans
end subroutine sub_init

subroutine sub_cmp(ans, res)
  integer(kind=4)::i,j
  DATA_TYPE,dimension(N,N)::ans,res
  do j=1,N
     do i=1,N
        if (ans(i,j).neqv.res(i,j)) then
           print *, "NG:", j,i, ans(i,j), res(i,j)
           exit
        end if
     end do
  end do
end subroutine sub_cmp


program main
  DATA_TYPE,dimension(N,N)::ans,res,r,s
  call sub_init(ans,res,r,s)
  call sub_test(ans, r,s)
  call sub(res, r,s)
  call sub_cmp(ans, res)
  print *, "OK"
end program main
