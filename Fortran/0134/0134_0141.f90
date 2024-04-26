subroutine s
integer,pointer:: a(:),b(:)
integer:: aa(10)
pointer(ib,aa)
allocate(a(3),b(3))
 a=(/1,2,3/)
 b=(/11,12,13/)
 k=2
ib=loc(a)
if (a(k)/=2)print *,102
if (aa(k)/=2)print *,112
if (b(3)/=13)print *,203
end  subroutine
call s
print *,'pass'
end
