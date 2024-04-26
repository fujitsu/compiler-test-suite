subroutine sequential(a,b,c,n)
  real*4 a(n,n),b(n,n),c(n,n)
  do concurrent(j=1:n)
     do concurrent(i=1:n)
        a(i,j) = b(i,j) + c(i,j)
     enddo
  enddo
end subroutine sequential

subroutine list(a,c,idx1,idx2,n)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n)
  do concurrent(j=1:n)
     do concurrent(i=1:n)
        a(idx1(i),idx2(j)) = a(idx1(i),idx2(j)) + c(i,j)
     enddo
  enddo
end subroutine list

subroutine reduction(a,n,s)
  real*4 a(n,n),s
  do concurrent(j=1:n)
     do concurrent(i=1:n)
        s = s+a(i,j)
     enddo
  enddo
end subroutine reduction

subroutine fg_def(a,n)
  real*4 a(n,n)
  do concurrent(j=2:n)
     do concurrent(i=1:n)
        a(i,j) = a(i,j-1)+1
     enddo
  enddo
end subroutine fg_def

subroutine fg_ref(a,n)
  real*4 a(n,n)
  do concurrent(j=1:n-1)
     do concurrent(i=1:n)
        a(i,j) = a(i,j+1)+1
     enddo
  enddo
end subroutine fg_ref

subroutine pure(a,b,n)
  real*4 a(n,n),b(n,n)
  interface 
     pure function pfunc(x)
       real(4),intent(in) :: x
       real(4) :: pfunc
     end function pfunc
  end interface

  do concurrent(j=1:n)
     do concurrent(i=1:n)
        a(i,j) = pfunc(b(i,j))
     enddo
  enddo
end subroutine pure

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc

subroutine mask(a,b,c,n,f)
  real*4 a(n,n),b(n,n),c(n,n),f(n,n)

  do concurrent(j=1:n)
     do concurrent(i=1:n)
        if (f(i,j).ge.2.0) then
           a(i,j) = b(i,j)+c(i,j)
        else
           a(i,j) = b(i,j)-c(i,j)
        endif
     enddo
  enddo
end subroutine mask

program main
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n)
  integer*8 idx1(n),idx2(n)

  call init(a,b,c,idx1,idx2,n,s,f)
  call sequential(a,b,c,n)
  print *,sum(a)

  call init(a,b,c,idx1,idx2,n,s,f)
  call list(a,c,idx1,idx2,n)
  print *,sum(a)

  call init(a,b,c,idx1,idx2,n,s,f)
  call reduction(a,n,s)
  print *,s

  call init(a,b,c,idx1,idx2,n,s,f)
  call fg_def(a,n)

  call init(a,b,c,idx1,idx2,n,s,f)
  call fg_ref(a,n)

  call init(a,b,c,idx1,idx2,n,s,f)
  call pure(a,b,n)
  print *,sum(a)

  call init(a,b,c,idx1,idx2,n,s,f)
  call mask(a,b,c,n,f)
  print *,sum(a)

end program main


subroutine init(a,b,c,idx1,idx2,n,s,f)
  real*4 a(n,n),b(n,n),c(n,n),s,f(n,n)
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
  enddo
  s = 0
end subroutine init
