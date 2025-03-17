subroutine sub1(a)
integer a(5)
forall (i=1:5)
   a(i)=sum(a(1:i))
end forall
end
subroutine sub2(a)
integer a(5)
forall (i=1:5)
   a(i)=sum(a(1:i))
end forall
end
integer a1(5),a2(5)
a1=(/1,2,3,4,5/)
a2=a1
call sub1(a1)
call sub2(a2)
if (any(a1/=a2))write(6,*) "NG"
print *,'pass'
end

