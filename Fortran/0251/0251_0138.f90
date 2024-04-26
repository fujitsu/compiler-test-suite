integer :: i=2
block
integer:: a(i)
if(size(a)/=2) print*,101

a=3

block
integer::b(a(2))
if(size(b)/=3) print*,102
a=a+1

block
integer::b(a(2))
if(size(b)/=4) print*,103
a=a+1
i=i+1

block
integer::b1(a(1)),b2(i)
if(size(b1)/=5) print*,104,size(b1)
if(size(b2)/=3) print*,105
end block
end block
end block
end block

print*,"pass"
end

