type gd   
     integer n
     integer k(8)
     integer kk(8)
end type gd

type (gd) a
type (gd) b

!$omp parallel workshare
forall ( i=1:8 )
  a%k(i) = i
  b%k(i) = i
  b%kk(i) = 100-i
endforall
!$omp end parallel workshare
!$omp parallel workshare
forall (i=1:8:1)
  a%kk(i) = b%kk(i) + b%k(i)
endforall
!$omp end parallel workshare
!$omp parallel workshare
forall (j=1:5)
  forall (i = 1:8:1)
    b%k(i) = a%k(i) +  b%k(i)
  end forall
end forall
!$omp end parallel workshare

if (any(a%kk/=(/(100,m=1,8)/))) print *,"fail"
if (any(b%k/=(/2,4,6,8,10,12,14,16/))) print *,"fail"

print *,'pass'
end
