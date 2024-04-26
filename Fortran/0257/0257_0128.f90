subroutine s1()
character(2),target ::t(2,2)=reshape(['11','22','33','44'],[2,2])
integer::k = 1
call ss(t(fun1(k):2:fun1(k), fun1(k):2:fun1(k)))
call ss(t(fun1(k):2:fun1(k), fun1(k):2:fun1(k))(:))
call ss(t(fun1(k):2:fun1(k), fun1(k):2:fun1(k))(fun1(k):2))
call ss(t(fun1(k):2:fun1(k), fun1(k):2:fun1(k))(fun1(k):fun1(k)+1))
contains
function fun1(k)
integer::k
integer::fun1
fun1 =k
end function
subroutine ss(a)
character(2)::a(2,2)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(2,2)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:2,1:2)/= reshape(['11','22','33','44'],[2,2]))) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end

