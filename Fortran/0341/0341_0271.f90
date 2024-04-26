subroutine sequential(a,b,c,n)
real*4 a(n),b(n),c(n)
do concurrent(i=1:n)
   a(i) = b(i) + c(i)
enddo
end

subroutine list(a,c,idx,n)
real*4 a(n),c(n)
integer*8 idx(n)
do concurrent(i=1:n)
   a(idx(i)) = a(idx(i)) + c(i)
enddo
end

subroutine reduction(a,n,s)
real*4 a(n),s
do concurrent(i=1:n)
   s = s+a(i)
enddo
end

subroutine fg_def(a,n)
real*4 a(n)
do concurrent(i=2:n)
   a(i) = a(i-1)+1
enddo
end

subroutine fg_ref(a,n)
real*4 a(n)
do concurrent(i=1:n-1)
   a(i) = a(i+1)+1
enddo
end

subroutine pure(a,b,n)
real*4 a(n),b(n)
interface 
   pure function pfunc(x)
     real(4),intent(in) :: x
     real(4) :: pfunc
   end function pfunc
end interface
do concurrent(i=1:n)
   a(i) = pfunc(b(i))
enddo
end

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc

subroutine mask(a,b,c,n,f)
real*4 a(n),b(n),c(n),f(n)
do concurrent(i=1:n)
   if (f(i).ge.2.0) then
      a(i) = b(i)+c(i)
   else
      a(i) = b(i)-c(i)
   endif
enddo
end

program main
parameter(n=200)
real*4 a(n),b(n),c(n),s,f(n)
integer*8 idx(n)

call init(a,b,c,idx,n,s,f)
call sequential(a,b,c,n)
print *,sum(a)

call init(a,b,c,idx,n,s,f)
call list(a,c,idx,n)
print *,sum(a)

call init(a,b,c,idx,n,s,f)
call reduction(a,n,s)
print *,s

call init(a,b,c,idx,n,s,f)
call fg_def(a,n)

call init(a,b,c,idx,n,s,f)
call fg_ref(a,n)

call init(a,b,c,idx,n,s,f)
call pure(a,b,n)
print *,sum(a)

call init(a,b,c,idx,n,s,f)
call mask(a,b,c,n,f)
print *,sum(a)

end


subroutine init(a,b,c,idx,n,s,f)
real*4 a(n),b(n),c(n),s,f(n)
integer*8 idx(n)

do i=1,n
   a(i)=i+10
   b(i)=i+20
   c(i)=i+30
   idx(i)=i
   f(i)=mod(i,4)  
enddo
s = 0
end
