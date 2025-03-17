subroutine sub1(n,a)
integer a(3,3)
forall (i=1:n-1)
 forall (j=i+1:n)
   a(i,j)=a(j,i)
 end forall
end forall
end
subroutine sub2(n,a)
integer a(3,3)
do      i=1,n-1
 do      j=i+1,n
   a(i,j)=a(j,i)
 end do
end do    
end
integer a1(3,3),a2(3,3)
a1=reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
a2=a1
call sub1(3,a1)
call sub2(3,a2)
if (any(a1/=a2))write(6,*) "NG"
print *,'pass'
end

