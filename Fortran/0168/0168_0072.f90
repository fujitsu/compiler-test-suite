integer a(10,1)/1,2,3,4,5,6,7,8,9,10/
integer v3(1)/1/
write (1,*) a(1,v3)
if (any(a(1,v3)/=1)) print *,20
print *,'pass'
end
