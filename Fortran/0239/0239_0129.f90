subroutine s1
integer,dimension(101,102,103)::a,b,c
a=1
b=2;b(101,102,103)=-2
c=3;c(  1,  2,  3)=-3

call sub(a)
if (b(101,102,103)/=-2) print *,101
a=c
if (a(  1,  1,  1)/=3) print *,102
if (a(101,102,103)/=3) print *,103
a(101,102,103)=c(1,2,3)
if (a(101,102,103)/=-3) print *,104
end

subroutine s2
integer,dimension(101,102,103)::a,b,c
a=1
b=2;b(101,102,103)=-2
c=3;c(  1,  2,  3)=-3

associate (p1=>a , p2=>b , p3=> c)
call sub(p1)
if (p2(101,102,103)/=-2) print *,201
p1=p3
if (p1(  1,  1,  1)/=3) print *,202
if (p1(101,102,103)/=3) print *,203
p1(101,102,103)=p3(1,2,3)
if (p1(101,102,103)/=-3) print *,204
end associate
end

subroutine sub(a)
integer,dimension(101,102,103)::a
if (any(a/=1)) print *,1001
end

call s1
call s2
print *,'pass'
end
