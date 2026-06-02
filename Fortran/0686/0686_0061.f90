integer a(5),b(5)
a=4;b=5
!$omp parallel workshare
forall(i=1:5)
   forall(j=2:a(i))
    a(j)=1
    b(j)=10
   end forall
end forall
!$omp end parallel workshare
if ( any(a/=(/4,1,1,1,4/)) ) print *,"fail"
if ( any(b/=(/5,10,10,10,5/)) ) print *,"fail"
print *,'pass'
end

