implicit complex (a-z)
parameter (aa=0)
parameter (cc=-aa)
write(1, '(1h ,z8.8)')cc
write(1,*)'cc=',cc            

write(1, '(1h ,z8.8)')(-0.0,-0.)
write(1,*)'const=',(-0.0,-0.)          
a=0
c=0
call s1(a,c,-(0,0))
print *,'pass'
end
subroutine s1(a,c,g)
implicit complex (a-z)
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

write(1, '(1h ,z8.8)')g
write(1,*)'g=',g             
end