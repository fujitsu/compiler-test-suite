subroutine s1(a1)
integer a1(2,3)
forall (n1=1:2)
 forall (n2=1:n1)
   a1(n1,n2) = a1(n1,n2)+1
  end forall
end forall
end
subroutine s2(a2)
integer a2(2,3)
do      n1=1,2
do       n2=1,n1
   a2(n1,n2) = a2(n1,n2) +1
  end do    
end do     
end
integer a1(2,3),a2(2,3)
a1=0;a2=0
call s1(a1)
call s2(a2)
if (any(a1/=a2)) print *,101
print *,'pass'
end

