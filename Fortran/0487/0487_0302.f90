type x(k)
 integer,kind:: k
 integer(k):: x1
end type
type(x(4)),parameter::v=x(4)(2)
if (v%x1/=2) print *,601
 print *,'pass'
end
