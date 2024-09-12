subroutine s1
character(3),parameter,dimension(1)::a=[character(len=int(b'11'),kind=int(z'01'))::1_""(1:0)//1_"123"(1**1:(1**1)+2)]
character(1),parameter,dimension(1)::b=[character(len(b),len(b))::[character(2)::"12"(1:2)]]

if (a(1)/='123')print *,102,a(1)
if (b(1)/='1')print *,101,b(1)
end
print *,'pass'
call s1
end
