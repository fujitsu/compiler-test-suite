implicit complex (a-z)
parameter (aa=0)
parameter (cc=-aa)
write(18, '(1h ,z8.8)')cc
write(18,*)'cc=',cc

write(18, '(1h ,z8.8)')(-0.0,-0.)
write(18,*)'const=',(-0.0,-0.)
a=0
c=0
call s1(a,c,-(0,0))
print *,'pass'
end
subroutine s1(a,c,g)
implicit complex (a-z)
b=-a
write(18, '(1h ,z8.8)')b
write(18,*)'b=',b
d=c-a
write(18, '(1h ,z8.8)')d
write(18,*)'d=',d
e=0
f=e-a
write(18, '(1h ,z8.8)')f
write(18,*)'f=',f

write(18, '(1h ,z8.8)')g
write(18,*)'g=',g
end
