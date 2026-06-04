pointer a
allocate(a)
call sub(loc(i),loc(a))
print *,'pass'
contains
subroutine sub(i1,i2)
pointer (i1,p1)
pointer (i2,p2)
if( loc(i)/=i1 ) print *,'fail'
if( loc(a)/=i2 ) print *,'fail'
end subroutine
end
