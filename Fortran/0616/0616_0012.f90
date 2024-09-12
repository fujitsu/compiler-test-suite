subroutine s1
integer a(2),b(2),c(2),d(2)
a=1
b=2
c=3
d=a+b+c
if (d(2)/=6)print *,2
end
call s1
print *,'pass'
end
