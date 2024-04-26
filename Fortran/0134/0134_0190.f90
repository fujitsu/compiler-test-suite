function f01() result(r)
 implicit character(kind=4,len=2)(f)
 character(kind=4,len=2):: r
 r=f02()
end function
function f02() result(r)
 implicit character(kind=4,len=2)(f)
 character(kind=4,len=2):: r
 r=f03()
end function
function f03() result(r)
 implicit character(kind=4,len=2)(f)
 character(kind=4,len=2):: r
 r='12'
end function
subroutine s1
 implicit character(kind=4,len=2)(f)
character(kind=4,len=2):: b
b='12'
if (f01()/=b)print *,111
end
call s1
print *,'pass'
end
