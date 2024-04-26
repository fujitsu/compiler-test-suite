integer,pointer :: r(:), s(:,:,:),q(:,:,:)
integer :: lower1 = 4
integer :: lower2 = 7
integer :: lower3 = 9
integer :: upper1 = 5
integer :: upper2 = 8
integer :: upper3 = 10
allocate(r(8))
allocate(q(8,2,2))
r = (/1,2,3,4,5,6,7,8/)
q = reshape((/(i,i=1,32)/),(/8,2,2/))
s(lower1:upper1,lower2:upper2,lower3:upper3) => r
print *,s
print *,s(4,7,9)
print *,s(5,7,9)
print *,s(4,8,9)
print *,s(5,8,9)
print *,s(4,7,10)
print *,s(5,7,10)
print *,s(4,8,10)
print *,s(5,8,10)
print *,size(s),lbound(s,1),ubound(s,1)
print *,size(s),lbound(s,2),ubound(s,2)
print *,size(s),lbound(s,3),ubound(s,3)
s(3:4,6:7,8:9) => q(1:8,2,2)
print *,s
print *,s(3,6,8)
print *,s(4,6,8)
print *,s(3,7,8)
print *,s(4,7,8)
print *,s(3,6,9)
print *,s(4,6,9)
print *,s(3,7,9)
print *,s(4,7,9)
print *,size(s),lbound(s,1),ubound(s,1)
print *,size(s),lbound(s,2),ubound(s,2)
print *,size(s),lbound(s,3),ubound(s,3)
s(3:4,6:7,8:9) => q(:,2,2)
print *,s
print *,s(3,6,8)
print *,s(4,6,8)
print *,s(3,7,8)
print *,s(4,7,8)
print *,s(3,6,9)
print *,s(4,6,9)
print *,s(3,7,9)
print *,s(4,7,9)
print *,size(s),lbound(s,1),ubound(s,1)
print *,size(s),lbound(s,2),ubound(s,2)
print *,size(s),lbound(s,3),ubound(s,3)
print *,'ok'
end
