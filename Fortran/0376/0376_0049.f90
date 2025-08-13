dimension aa(2),cc(2),a(2),c(2)
parameter (aa=0)
parameter (cc=-aa)
write(19, '(1h ,z8.8)')cc
write(19,*)'cc=',cc

write(19, '(1h ,z8.8)')-0.0
write(19,*)'const=',-0.0
a=0
c=0
call s1(a,c,-0.0)
print *,'pass'
end
subroutine s1(a,c,g)
dimension a(2),b(2),c(2),d(2),e(2),f(2)
b=-a
write(19, '(1h ,z8.8)')b
write(19,*)'b=',b
d=c-a
write(19, '(1h ,z8.8)')d
write(19,*)'d=',d
e=0
f=e-a
write(19, '(1h ,z8.8)')f
write(19,*)'f=',f

write(19, '(1h ,z8.8)')g
write(19,*)'g=',g
end
