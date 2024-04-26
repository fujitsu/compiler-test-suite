common //a,b,r
a=10
b=20
call swap(a,b,r)
print *,'pass'
end

subroutine swap(aa,bb,rr)
real :: aa,bb,rr
common //a,b,r
r=b
bb=a
aa=rr
end
