parameter (aa=0)
parameter (cc=-aa)
write(17, '(1h ,z8.8)')cc
write(17,*)'cc=',cc

write(17, '(1h ,z8.8)')-0.0
write(17,*)'const=',-0.0
a=0
c=0
call s1(a,c,-0.0)
print *,'pass'
end
subroutine s1(a,c,g)
b=-a
write(17, '(1h ,z8.8)')b
write(17,*)'b=',b
d=c-a
write(17, '(1h ,z8.8)')d
write(17,*)'d=',d
e=0
f=e-a
write(17, '(1h ,z8.8)')f
write(17,*)'f=',f

write(17, '(1h ,z8.8)')g
write(17,*)'g=',g
end
