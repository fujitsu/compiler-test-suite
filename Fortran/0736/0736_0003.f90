integer ::a(5),b(5)=(/1,2,3,4,5/)
a=b
forall (i=1:4)
a(i)=a(i+1)
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+1)=a(i)
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+b(1))=a(i)
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=a(i+b(1))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+sum(b(:1)))=a(i)
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=a(i+sum(b(:1)))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=-a(i+1)
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=-1:-4:-1)
a(-i+1)=-a(-i)
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+sum(b(:1)))=a(sum(b(i:i)))
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=-a(i-sum(-b(:1)))
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i-sum(-b(:1)))=-a(i)
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=a(i+sum(+b(:1)))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
print *,'pass'
end
