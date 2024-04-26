integer,pointer :: r (:,:), s(:,:)
integer,pointer :: lower01,lower02,upper01,upper02,lower03,upper03
allocate(lower01,lower02,upper01,upper02,lower03,upper03,r(4,2))
lower01 = 2
upper01 = 3
lower02 = 4
upper02 = 5
lower03 = 1
upper03 = 4
r = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
s(lower01:upper01,lower02:upper02) => r(1:4,2)
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
s(lower01:upper01,lower02:upper02) => r(lower03:upper03,2)
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
