module m1
 integer:: id1=10,id2=10
 contains
!
 subroutine sub
 integer a(id1,id2),b(id1,id2)
 a=1
 b=a+1
if (a(id1,id2)/=1) print *,101
if (b(id1,id2)/=2) print *,102
 end subroutine
end
 use m1
call sub
print *,'pass'
end



