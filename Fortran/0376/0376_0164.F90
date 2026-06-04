interface
subroutine s(x) bind(c)

complex(16),value::x

end subroutine 
end interface

complex(16)::c,d(2)
type x
 integer v
 complex(16)::c,d(2)
end type

type(x)::t
c=(1._16,2._16)
call s(c)
if (abs(c-(1._16,2._16))>0.001)print *,'fail'

call s((1._16,2._16))

d(2)=(1._16,2._16)
call s(d(2))
if (abs(d(2)-(1._16,2._16))>0.001)print *,'fail'

t%c=(1._16,2._16)
call s(t%c)
if (abs(t%c-(1._16,2._16))>0.001)print *,'fail'
t%d(2)=(1._16,2._16)
call s(t%d(2))
if (abs(t%d(2)-(1._16,2._16))>0.001)print *,'fail'
print *,'pass'
end
subroutine s(x) bind(c)

complex(16),value::x

if (abs(x-(1._16,2._16))>0.001)print *,'fail'
x=x+(1,1)
end subroutine 
