integer ::a(5),b(5)=(/1,2,3,4,5/)
a=b
forall (i=1:4)
a(i)=a(k(i)+1)
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+1)=a(k(i))
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+b(1))=a(k(i))
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(k(i))=a(i+b(1))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+sum(b(:1)))=a(-k(-i))
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(k(i))=a(k(i)+sum(b(:1)))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(k(i))=-a(k(i)+1)
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=-1:-4:-1)
a(-k(i)+1)=-a(-k(i))
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+sum(b(:1)))=a(sum(b(k(i):k(i))))
end forall
if (any(a/=(/1,1,2,3,4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(k(i))=-a(i-sum(-b(:1)))
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i-sum(-b(:1)))=-a(k(i))
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)=a(i+sum(+b(:k(1))))
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
print *,'pass'
contains
elemental function k(kk)
intent(in)::kk
k=kk
end function
end
