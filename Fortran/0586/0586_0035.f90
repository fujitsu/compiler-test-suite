integer,parameter::t1(5)=[1,2,3,4,5]
integer::a,b,c,d,e
integer,pointer::ptr1
integer,pointer::ptr2
integer,target::t2
data a,b,ptr1,c,d,e,ptr2 /t1(1),t1(2),t2,t1(3),t1(4),t1(5),t2/
print*,"PASS"
end


