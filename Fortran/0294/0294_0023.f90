integer,pointer :: r (:,:), s(:,:)
integer,pointer :: lower01(:),lower02(:),upper01(:),upper02(:),lower03(:),upper03(:)
allocate(lower01(1),lower02(1),upper01(1),upper02(1),lower03(1),upper03(1),r(4,2))
lower01(1) = 2
upper01(1) = 3
lower02(1) = 4
upper02(1) = 5
lower03(1) = 1
upper03(1) = 4
r = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
s(lower01(1):upper01(1),lower02(1):upper02(1)) => r(1:4,2)
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
s(lower01(1):upper01(1),lower02(1):upper02(1)) => r(lower03(1):upper03(1),2)
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
