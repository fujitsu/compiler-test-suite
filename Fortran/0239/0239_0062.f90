subroutine s1
integer,dimension(5)::a,b,c
a=1;b=2;c=3
n1=1;n2=2;n3=3;n4=4;n5=5

associate (p=>b(n1:n5:n2))
a(n1:n5:n2)= p +1
end associate
if (any(a/=[3,1,3,1,3])) print *,101
m2=2
associate (p=>b(n1:n5:n2))
p(m2)= 10
end associate
if (any(b/=[2,2,10,2,2])) print *,102
end
call s1
print *,'pass'
end
