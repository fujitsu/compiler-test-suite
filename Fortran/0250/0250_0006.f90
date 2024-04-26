Integer(kind = 4),parameter::i(2) = [2,2]
Integer,parameter::a(i(2):*) = ubound(i) 
if(Size(a) .EQ. 1 )then
print*,'Pass'
else
print*,'Fail'
endif
end


