subroutine sequential
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n, m(i).ne.0)
     a(i) = b(i) + c(i)
  enddo

  call output(a)
end subroutine sequential

subroutine list
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n, m(i).ne.0)
     a(idx(i)) = a(idx(i)) + c(i)
  enddo

  call output(a)
end subroutine list

subroutine reduction
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n, m(i).ne.0)
     s = s+a(i)
  enddo

  call output_scalar(s)
end subroutine reduction

subroutine fg_def
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=2:n, m(i).ne.0)
     a(i) = a(i-1)+1
  enddo

  call output_dummy(a)
end subroutine fg_def

subroutine fg_ref
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n-1, m(i).ne.0)
     a(i) = a(i+1)+1
  enddo

  call output_dummy(a)
end subroutine fg_ref

subroutine pure
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  interface 
     pure function pfunc(x)
       real(4),intent(in) :: x
       real(4) :: pfunc
     end function pfunc
  end interface

  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n, m(i).ne.0)
     a(i) = pfunc(b(i))
  enddo

  call output(a)
end subroutine pure

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc

subroutine mask
  parameter(n=200)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)
  call init(a,b,c,idx,n,s,f,m)

  do concurrent(i=1:n, m(i).ne.0)
     if (f(i).ge.2.0) then
        a(i) = b(i)+c(i)
     else
        a(i) = b(i)-c(i)
     endif
  enddo
  call output(a)

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

subroutine init(a,b,c,idx,n,s,f,m)
  real*4 a(n),b(n),c(n),s,f(n),m(n)
  integer*8 idx(n)

  do i=1,n
     a(i)=i+10
     b(i)=i+20
     c(i)=i+30
     idx(i)=i
     f(i)=mod(i,4)  
     m(i)=mod(i,3)  
  enddo
  s = 0
end subroutine init

subroutine output(a)
  parameter(n=200)
  real*4 a(n)
  print *,sum(a)
end subroutine output

subroutine output_scalar(s)
  real*4 s
  print *,s
end subroutine output_scalar

subroutine output_dummy(a)
  parameter(n=200)
  real*4 a(n)
end subroutine output_dummy
