module m1
contains
elemental function s1(a1,a2) result(r)
integer,intent(in)::a1
integer,intent(in),value:: a2
r=a1+a2
end function
pure      function s2(a1,a2) result(r)
integer,intent(in)::a1
integer,intent(in),value:: a2
r=a1+a2
end function
elemental function s3(a1,a2) result(r)
integer,intent(in)::a1
integer,           value:: a2
r=a1+a2
end function
pure      function s4(a1,a2) result(r)
integer,intent(in)::a1
integer,           value:: a2
r=a1+a2
end function
pure      function s5(a1,a2) result(r)
integer,intent(in)::a1(3)
integer,intent(in),value:: a2(3)
integer::r(3)
r=a1+a2
end function
pure      function s6(a1,a2) result(r)
integer,intent(in)::a1(3)
integer,           value:: a2(3)
integer::r(3)
r=a1+a2
end function
end
use m1
integer:: a(3)=[1,2,3]
integer:: b(3)
b=0
b(3)=s1 ( b(3)    , a(3))
if (   (b(3)/=a(3))) print *,101
b=0
b(1)=s2 ( b(1)    , a(1))
if (   (b(1)/=a(1))) print *,102
b=0
b(3)=s3 ( b(3)    , a(3))
if (   (b(3)/=a(3))) print *,103
b=0
b(1)=s4 ( b(1)    , a(1))
if (   (b(1)/=a(1))) print *,104
b=0
b=   s5 ( b       , a   )
if (any(b   /=a   )) print *,105
b=0
b=   s6 ( b       , a   )
if (any(b   /=a   )) print *,106
print *,'pass'
end

