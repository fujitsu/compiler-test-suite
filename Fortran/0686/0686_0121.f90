integer,target,dimension(8):: k
type gd   
     integer,pointer:: p(:)
end type gd

type (gd) a

k=(/1,2,3,4,5,6,7,8/)
a%p=>k

!$omp parallel workshare
forall (i=1:4:1)
    a%p(i+4) = k(i) * 10     
endforall
!$omp end parallel workshare
if (any(k/=(/1,2,3,4,10,20,30,40/))) print *,"fail"
print *,'pass'
end
