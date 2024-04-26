type :: str
integer,pointer :: a(:) 
integer,pointer :: b(:,:)
end type
type (str) :: sss
allocate(sss%a(100),source=(/(i,i=1,100)/))
sss%b(2:8,4:10) => sss%a
print *,sss%b
print *,lbound(sss%b,1) , ubound(sss%b,1)
print *,lbound(sss%b,2) , ubound(sss%b,2)
print *,'ok'
end
