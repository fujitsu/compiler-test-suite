subroutine sequential
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        a(i,j) = b(i,j) + c(i,j)
     enddo
  enddo

  call output(a,n)
end subroutine sequential

subroUtine list
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        a(idx1(i),idx2(j)) = a(idx1(i),idx2(j)) + c(i,j)
     enddo
  enddo

  call output(a,n)
end subroutine list

subroutine reduction
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        s = s+a(i,j)
     enddo
  enddo

  call output_scalar(s)
end subroutine reduction

subroutine fg_def
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=2:n, m(j).ne.0)
     do i=1,n
        a(i,j) = a(i,j-1)+1
     enddo
  enddo

  call output_dummy(a)
end subroutine fg_def

subroutine fg_ref
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n-1, m(j).ne.0)
     do i=1,n
        a(i,j) = a(i,j+1)+1
     enddo
  enddo

  call output_dummy(a)
end subroutine fg_ref

subroutine pure
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  interface 
     pure function pfunc(x)
       real(4),intent(in) :: x
       real(4) :: pfunc
     end function pfunc
  end interface

  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        a(i,j) = pfunc(b(i,j))
     enddo
  enddo

  call output(a,n)
end subroutine pure

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc

subroutine mask
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,s,f,m)

  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        if (f(i,j).ge.2.0) then
           a(i,j) = b(i,j)+c(i,j)
        else
           a(i,j) = b(i,j)-c(i,j)
        endif
     enddo
  enddo

  call output(a,n)
end subroutine mask

program main
  call sequential
  call list
  call reduction
  call fg_def
  call fg_ref
  call pure
  call mask
end program main


subroutine init(a,b,c,idx1,idx2,n,s,f,m)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n),m(n)
  integer*8 idx1(n),idx2(n)

  do j=1,n
    do i=1,n
       a(i,j)=i+j+10
       b(i,j)=i+j+20
       c(i,j)=i+j+30
       idx1(i)=i
       f(i,j)=mod(i,4)  
    enddo
    idx2(j)=j
    m(j)=mod(j,3)
  enddo
  s = 0
end subroutine init

subroutine output(a,n)
  real*4 a(n)
  print *,sum(a)
end

subroutine output_scalar(s)
  real*4 s
  print *,s
end

subroutine output_dummy(a)
  parameter(n=200)
  real*4 a(n)
end subroutine output_dummy
