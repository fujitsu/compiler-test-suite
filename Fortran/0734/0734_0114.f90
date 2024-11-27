real,target::a(9)
real,pointer::p1(:),p2(:)
a=(/1,2,3,4,5,6,7,8,9/)
k=1
p1=> a(3:9:2)
p2=> a(9:2:-2)
k=k+1
print *,'pass'
end 
