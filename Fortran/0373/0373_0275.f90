subroutine sub(a,n)
real a(n)
a(1:n)=a(n:1:-1)
end subroutine

real a(10)/10*2/
call sub(a,10)
print *,'ok'
end
