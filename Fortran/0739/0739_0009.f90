function m0_ac() result(a)
 character(kind=1,len=1),pointer,dimension(:):: a,b
 entry   m1_ac() result(b)
 allocate (a(2))
 a='a'
end function

interface
function m0_ac() result(a)
 character(kind=1,len=1),pointer,dimension(:):: a
end function
end interface
character*1 x(2)
x=m0_ac()
if (any(x/='a'))write(6,*) "NG"
print *,'pass'
end
