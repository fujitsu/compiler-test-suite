integer, target, dimension(10) :: a
integer, pointer, dimension(:) :: p
integer:: b(10)=0,c(10)=0

type gda
  sequence
  integer:: ka(10)=0
end type gda

type (gda) z

equivalence (c(1),z)

!$omp parallel workshare
forall (i=1:10)
   a(i) = i
   b    = 10-i+1
   c(i) = 10-i+1
end forall
!$omp end parallel workshare
if ( any(a/=(/1,2,3,4,5,6,7,8,9,10/)) ) print *,"fail"
if ( any(b/=(/1,1,1,1,1,1,1,1,1,1 /)) ) print *,"fail"
if ( any(c/=(/10,9,8,7,6,5,4,3,2,1/)) ) print *,"fail"

p=>a
!$omp parallel workshare
forall (i=1:9)
  p(i+1) = a(i)
end forall
!$omp end parallel workshare

!$omp parallel workshare
forall (j=1:9)
  z%ka(j)=c(j+1)
end forall
!$omp end parallel workshare
if ( any(z%ka/=(/9,8,7,6,5,4,3,2,1,1/)) ) print *,"fail"

!$omp parallel workshare
forall (j=1:9)
  c(j+1) = z%ka(j)
end forall
!$omp end parallel workshare
if ( any(c/=(/9,9,8,7,6,5,4,3,2,1/)) ) print *,"fail"
print *,'pass'
end
