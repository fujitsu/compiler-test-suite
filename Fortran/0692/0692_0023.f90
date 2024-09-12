integer a(10),b(10)
a=-1
!$omp workshare
forall (i=1:5)
a(i)=i
a(i+1)=a(i+2)+1
end forall
!$omp end workshare
if (any(a/=(/1,4,5,6,0,0,-1,-1,-1,-1/)))print *,a
b=-1
!$omp workshare
forall (i=1:5)
b(i)=i
end forall
!$omp end workshare
if (any(b/=(/1,2,3,4,5,-1,-1,-1,-1,-1/)))print *,b
print *,'pass'
end
