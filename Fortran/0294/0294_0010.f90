integer,pointer :: a(:,:) 
integer,pointer :: b(:,:)
allocate(a(10,10),source=reshape((/(i,i=1,100)/),(/10,10/)))
b(2:,4:) => a
print *,b
print *,lbound(b,1) , ubound(b,1)
print *,lbound(b,2) , ubound(b,2)
print *,'ok'
end
