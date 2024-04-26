subroutine s1()
integer::t1(5)= [1,2,3,4,5]
integer::k =1
call ss3(t1(k))
if(any(t1.ne.[11,12,13,14,15]))print*,"101"
contains
subroutine ss3(a)
integer::a(5)
if(loc(a).ne.loc(t1))print*,"101"
a =[11,12,13,14,15]
end subroutine
end subroutine
call s1()
print *,'pass'
end

