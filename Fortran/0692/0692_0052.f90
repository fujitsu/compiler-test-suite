integer a(3,3)
n=3
a=reshape((/(i,i=1,9)/),(/3,3/))
!$omp workshare
forall (i=1:n-1)
forall (j=i+1:n)
 a(i,j)=a(j,i)
end forall
end forall
!$omp end workshare
if(any((/a/)/=(/1,2,3,2,5,6,3,6,9/)))print *,'fail'
print *,'pass'
end
