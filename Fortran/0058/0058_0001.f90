module m1
contains
elemental subroutine s1(a1,a2)
integer,intent(out)::a1
integer,intent(in),value:: a2
a1=a2
end subroutine
pure      subroutine s2(a1,a2)
integer,intent(out)::a1
integer,intent(in),value:: a2
a1=a2
end subroutine
elemental subroutine s3(a1,a2)
integer,intent(out)::a1
integer,           value:: a2
a1=a2
end subroutine
pure      subroutine s4(a1,a2)
integer,intent(out)::a1
integer,           value:: a2
a1=a2
end subroutine
pure      subroutine s5(a1,a2)
integer,intent(out)::a1(3)
integer,intent(in),value:: a2(3)
a1=a2
end subroutine
pure      subroutine s6(a1,a2)
integer,intent(out)::a1(3)
integer,           value:: a2(3)
a1=a2
end subroutine
end
use m1
integer:: a(3)=[1,2,3]
integer:: b(3)
call s1 ( b(3)    , a(3))
if (   (b(3)/=a(3))) print *,101
b=0
call s2 ( b(1)    , a(1))
if (   (b(1)/=a(1))) print *,102
b=0
call s3 ( b(3)    , a(3))
if (   (b(3)/=a(3))) print *,103
b=0
call s4 ( b(1)    , a(1))
if (   (b(1)/=a(1))) print *,104
b=0
call s5 ( b       , a   )
if (any(b   /=a   )) print *,105
b=0
call s6 ( b       , a   )
if (any(b   /=a   )) print *,106
print *,'pass'
end

