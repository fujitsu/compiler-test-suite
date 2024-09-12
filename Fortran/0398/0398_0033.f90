subroutine s1(a1)
integer a1(3,2,4)
!$omp parallel
!$omp workshare
forall (n1=1:2)
 forall (n2=1:3)
   a1(:,n1,n2+1) = a1(:,n1,n2)+1
  end forall
end forall
!$omp end workshare
!$omp end parallel
end
subroutine s2(a2)
integer a2(3,2,4),x(3,2,4)
do      n1=1,2
do       n2=1,3
   x(:,n1,n2) = a2(:,n1,n2) +1
  end do    
end do     
do      n1=1,2
do       n2=1,3
   a2(:,n1,n2+1) = x(:,n1,n2) 
  end do    
end do     
end
integer a1(3,2,4),a2(3,2,4)
a1=0;a2=0
call s1(a1)
call s2(a2)
if (any(a1/=a2)) then
  print *,101
  print *,a1
  print *,a2
endif
print *,'pass'
end
