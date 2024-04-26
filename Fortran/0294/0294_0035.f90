type :: str
integer,pointer :: r (:,:,:), s(:,:)
end type
integer :: lower01 = 4
integer :: lower02 = 6
type(str) :: sss
allocate(sss%r(2,2,2))
sss%r = reshape((/1,2,3,4,5,6,7,8/),(/2,2,2/))
sss%s((lower01+1):,(lower02+1):) => sss%r(1:,1:,2)
print *,sss%r
print *,sss%s
print *,size(sss%s)
print *,lbound(sss%s,1),ubound(sss%s,1)
print *,lbound(sss%s,2),ubound(sss%s,2)
print *,'ok'
end
