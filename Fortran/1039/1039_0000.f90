integer a(4)
a(1)=1;a(3)=2
call sub(a(1:4:2))
print *,'pass'
end
subroutine sub(a)
integer a(2)
if (any(a/=(/1,2/)))write(6,*) "NG"
end
