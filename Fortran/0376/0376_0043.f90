a=0
c=0
call s1(a,c)
print *,'pass'
end
subroutine s1(a,c)
b=-a
write(1, '(1h ,z8.8)')b
write(1,*)'b=',b             
d=c-a
write(1, '(1h ,z8.8)')d
write(1,*)'d=',d             
e=0
f=e-a
write(1, '(1h ,z8.8)')f
write(1,*)'f=',f             
end
