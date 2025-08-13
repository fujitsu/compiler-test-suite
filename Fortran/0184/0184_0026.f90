subroutine s1
save
integer :: a22(1,1)
forall( k32=1:1) 
  a22(f(k32),1)=1
end forall
n=0
call ss(n)
contains
pure function f(k) result(r)
integer,intent(in)::k
integer::r
r=k
end function
recursive subroutine ss(n)
integer::n
  k32=n
write(25,'(z16.16)')loc(k32)
n=n+1
if (n<2) call ss(n)
n=n-1
if (k32/=n) print *,12204,k32,n
end subroutine
end
call s1
print *,'pass'
end
