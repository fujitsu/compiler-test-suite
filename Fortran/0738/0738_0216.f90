type x
 integer,allocatable::p1(:)
 integer,pointer    ::pp(:)
 integer,allocatable::p2(:)
end type
type(x)::p
integer :: pp(10)
integer :: qq(10)
integer,target :: rr(10)
10 pp=1
11 qq=2
12 rr=3
20 do i=1,1
30    p=x(pp,rr,qq)
40 end do 
50 if (any(p%p1/=(/(1,i=1,10)/))) write(6,*) "NG"
51 if (any(p%pp/=(/(3,i=1,10)/))) write(6,*) "NG"
52 if (any(p%p2/=(/(2,i=1,10)/))) write(6,*) "NG"
60 print *,'pass'
end
