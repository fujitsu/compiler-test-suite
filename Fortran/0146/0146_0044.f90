subroutine s(a,b)
integer,target:: a(3),b(3)
a(1)=3
b(3)=3
a(2)=3
b(3)=3
a(2)=3
b(3)=3
if (a(1)/=3)print *,401
if (b(3)/=3)print *,402
end  subroutine
interface
subroutine s(a,b)
integer,target:: a(3),b(3)
end subroutine
end interface
integer,target:: a(3),b(3)
call s(a,b)
print *,'pass'
end
