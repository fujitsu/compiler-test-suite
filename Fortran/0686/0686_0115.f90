integer,target:: a(10)

type gda
 sequence
  integer,pointer:: p(:)
end type gda

type (gda) z

!$omp parallel workshare
forall (i=1:10)
  a(i) = 10-i+1
end forall
!$omp end parallel workshare

z%p=>a

!$omp parallel workshare
forall (j=1:5)
  z%p(j+5) = a(j)
end forall
!$omp end parallel workshare
if(any(z%p/=(/10,9,8,7,6,10,9,8,7,6/))) print *,"fail"
print *,'pass'
end
