subroutine sequential(a,b,c,n,m)
real*4 a(n),b(n),c(n),m(n)
do concurrent(i=1:n, m(i).ne.0)
   a(i) = b(i) + c(i)
enddo
end

subroutine list(a,c,idx,n,m)
real*4 a(n),c(n),m(n)
integer*8 idx(n)
do concurrent(i=1:n, m(i).ne.0)
   a(idx(i)) = a(idx(i)) + c(i)
enddo
end

subroutine reduction(a,n,s,m)
real*4 a(n),s,m(n)
do concurrent(i=1:n, m(i).ne.0)
   s = s+a(i)
enddo
end

subroutine fg_def(a,n,m)
real*4 a(n),m(n)
do concurrent(i=2:n, m(i).ne.0)
   a(i) = a(i-1)+1
enddo
end

subroutine fg_ref(a,n,m)
real*4 a(n),m(n)
do concurrent(i=1:n-1, m(i).ne.0)
   a(i) = a(i+1)+1
enddo
end

subroutine pure(a,b,n,m)
real*4 a(n),b(n),m(n)
interface 
   pure function pfunc(x)
     real(4),intent(in) :: x
     real(4) :: pfunc
   end function pfunc
end interface
do concurrent(i=1:n, m(i).ne.0)
   a(i) = pfunc(b(i))
enddo
end

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc

subroutine mask(a,b,c,n,f,m)
real*4 a(n),b(n),c(n),f(n),m(n)
do concurrent(i=1:n, m(i).ne.0)
   if (f(i).ge.2.0) then
      a(i) = b(i)+c(i)
   else
      a(i) = b(i)-c(i)
   endif
enddo

end

program main
parameter(n=200)
real*4 a(n),b(n),c(n),s,f(n),m(n)
integer*8 idx(n)

call init(a,b,c,idx,n,s,f,m)
call sequential(a,b,c,n,m)
print *,sum(a)

call init(a,b,c,idx,n,s,f,m)
call list(a,c,idx,n,m)
print *,sum(a)

call init(a,b,c,idx,n,s,f,m)
call reduction(a,n,s,m)
print *,s

call init(a,b,c,idx,n,s,f,m)
call fg_def(a,n,m)

call init(a,b,c,idx,n,s,f,m)
call fg_ref(a,n,m)

call init(a,b,c,idx,n,s,f,m)
call pure(a,b,n,m)
print *,sum(a)

call init(a,b,c,idx,n,s,f,m)
call mask(a,b,c,n,f,m)
print *,sum(a)

end


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
end
