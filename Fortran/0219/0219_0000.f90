subroutine s(a,k1,k2,n1,n2)
integer::a(k1,k2),b(3,2)
a(n1,n2)=1
a((n1),(n2))=1
a(1 , 1)=1
a(2 , 2)=1
b=0
b(n1,n2)=1
b(1 ,1 )=1
b(2 ,2 )=1
if (b(1,1)/=1) print *,101
if (b(2,2)/=1) print *,102
if (b(3,2)/=1) print *,103
write(1,*) b
end
parameter (k1=3,k2=2,n1=3,n2=2)
integer::a(k1,k2),aa(k1*k2)
a=0
call       s(a,k1,k2,n1,n2)
if (a(1,1)/=1) print *,201
if (a(2,2)/=1) print *,202
if (a(3,2)/=1) print *,203
write(2,*) a

rewind 1
read(1,*) aa
if (aa(1)/=1) print *,301
if (aa(5)/=1) print *,302
if (aa(6)/=1) print *,303
rewind 2
read(2,*) aa
if (aa(1)/=1) print *,401
if (aa(5)/=1) print *,402
if (aa(6)/=1) print *,403
print *,'pass'
end
