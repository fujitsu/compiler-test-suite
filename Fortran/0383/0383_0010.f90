character(3),parameter,dimension(1)::a=[character(len=int(b'11'),kind=int(z'01'))::1_""(1:0)//1_"123"(1**1:(1**1)*3)]
character(1),parameter,dimension(1)::b=[character(len(b),len(b))::[character(2)::"12"(1:2)]]

if (all(a/=[character(len=int(b'11'),kind=int(z'01')):: &
    1_""(1:0)// 1_"123"(1**1:(1**1)*3)])) print *,'fail'
if (all(b/=[character(len(b),len(b))::[character(2)::"12"(1:2)]])) print *,'fail'
print *,'pass '
end
