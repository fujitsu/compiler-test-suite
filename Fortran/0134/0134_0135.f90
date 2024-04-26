subroutine s
integer:: a(3),b(3)
 a=(/1,2,3/)
 b=(/11,12,13/)
 k=2
if (a(1)/=1)print *,101,a(1)
if (a(k)/=2)print *,102,a(2)
if (a(3)/=3)print *,103,a(3)
if (b(1)/=11)print *,201,b(1)
if (b(k)/=12)print *,202,b(2)
if (b(3)/=13)print *,203,b(3)
end  subroutine
call s
print *,'pass'
end
