complex:: a(10),b(10)
data a%re /10*1.0/
b%re=1.0
write(10,*) (a(i)%re,i=1,10)
write(10,*) (b(i)%re,i=1,10)
print *,'pass'
end
