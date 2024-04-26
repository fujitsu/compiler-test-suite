module mod
integer::m1=-1,m3=-3,m4=-4
end
subroutine s1
use mod
integer,parameter::ap(3,4)=reshape([(k,k=1,12)],[3,4])
integer:: a(-3:-1,-4:-1)
a=0
associate (p=> a)
 if (any(ubound(p)/=[-1,-1])) print *,101
 p=ap
if (any(shape(p)/=shape(ap))) print *,103
 if (any(a/=ap)) print *,102
end associate
a=0
associate (p=> a(:,:))
 if (any(ubound(p)/=[3,4])) print *,201
 p=ap
 if (any(a/=ap)) print *,202
end associate
associate (p=> a(m3:m1,m4:m1))
 m1=m1+1000000
 m3=m3+100
 m4=m3+2000000
 if (any(ubound(p)/=[3,4])) print *,301
 p=ap
 if (any(a/=ap)) print *,302
end associate
m1=-1
m3=-3
m4=-4
associate(p=>'12345')
if (p/='12345') print *,401
if (p(3:5)/='345') print *,402
if (p(-m3:5)/='345') print *,403
if (len(p(-m3:5))/=3) print *,404
end associate
m3=3
m4=4
associate(p=>'12345'(m3:))
m3=100000
if (p/='345') print *,501
if (p(1:3)/='345') print *,508
if (p(2:3)/='45') print *,502,p(2:3)
if (p(6-m4:3)/='45') print *,503
if (len(p(6-m4:3))/=2) print *,504
end associate
m3=3
associate(p=>'12345'(:m3))
m3=100000
if (p/='123') print *,601
if (p(2:3)/='23') print *,602
if (p(6-m4:3)/='23') print *,603
if (len(p(6-m4:3))/=2) print *,604
end associate
m3=3
associate(p=>'12345'(m3:m4))
m3=100000
m4=200000
mm4=4
if (p/='34') print *,701
if (p(2:3)/='45') print *,702
if (p(6-mm4:3)/='45') print *,703
if (len(p(6-mm4:3))/=2) print *,704
end associate
end

call s1
print *,'pass'
end
