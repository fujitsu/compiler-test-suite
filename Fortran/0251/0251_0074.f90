integer :: i
integer :: a(10),b(10)
b=10
a=[12,13,14,15,16,17,18,19,110,111]
block
integer :: a(10),b(10)
b=0
a=[2,3,4,5,6,7,8,9,10,11]
forall(i=1:10,a(i)<10)
b(i)=a(i)
end forall
if(any(a/=[2,3,4,5,6,7,8,9,10,11])) print*,101
if(any(b/=[2,3,4,5,6,7,8,9,0,0])) print*,102
end block
if(any(a/=[12,13,14,15,16,17,18,19,110,111])) print*,103
if(any(b/=[10,10,10,10,10,10,10,10,10,10])) print*,104
print*,'pass'
end
