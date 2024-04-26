subroutine s1
integer,dimension(5,4)::a,b,c
a=1
b=2
associate( p=>a,w=>c)
 a(2:5,2:4)=p(: 4,: 3)+b(: 4,: 3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,104
end
call       s1
call       s2
call       s3
call       s4
print *,'pass'
end
subroutine s2
integer,dimension(5)::a,b,c
a=1
b=2
associate( p=>a,w=>c)
 a(2:5)=p(: 4)+b(: 4)
end associate
if (any([a]/=[1,3,3,3,3]))print *,105
end
subroutine s3
integer,dimension(5)::a,b,c
a=1
b=2
 a(2:5)=a(: 4)+b(: 4)
if (any([a]/=[1,3,3,3,3]))print *,106
end
subroutine s4
integer,dimension(5,4)::a,b,c
a=1
b=2
 a(2:5,2:4)=a(: 4,: 3)+b(: 4,: 3)
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,107
end
