a=0
c=0
call s1(a,c)
print *,'pass'
end
subroutine s1(a,c)
b=-a
write(15, '(1h ,z8.8)')b
write(15,*)'b=',b
d=c-a
write(15, '(1h ,z8.8)')d
write(15,*)'d=',d
e=0
f=e-a
write(15, '(1h ,z8.8)')f
write(15,*)'f=',f
end
