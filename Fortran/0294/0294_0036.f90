type :: str
integer,pointer :: a(:,:) 
integer,pointer :: b(:,:)
end type
type(str) :: sss
allocate(sss%a(10,10),source=reshape((/(i,i=1,100)/),(/10,10/)))
sss%b(2:,4:) => sss%a
print *,sss%b
print *,lbound(sss%b,1) , ubound(sss%b,1)
print *,lbound(sss%b,2) , ubound(sss%b,2)
print *,'ok'
end
