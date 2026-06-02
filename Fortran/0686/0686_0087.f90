integer,parameter :: m=2,n=5
integer*4 :: a(5,2)=reshape((/11,21,31,41,51,12,22,32,42,52/),(/5,2/))
integer*4 :: b(5,2)=reshape((/11,21,31,41,51,12,22,32,42,52/),(/5,2/))
integer*4 :: t(n) /1,2,3,4,5/

!$omp parallel workshare
forall ( k=1:n)
    a(k,1) = a(k,1) + a(k,2)
end forall
!$omp end parallel workshare
if ( any((/a/)/=(/23,43,63,83,103,12,22,32,42,52/)) ) print *,"fail"

!$omp parallel workshare
forall ( k=1:m ,i=1:n)
    b(t(i),k) = b(t(i),k) + t(i)
end forall
!$omp end parallel workshare
if ( any((/b/)/=(/12,23,34,45,56,13,24,35,46,57/)) ) print *,"fail"

print *,'pass'
end
