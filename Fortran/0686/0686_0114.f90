integer b(10) /0,2,4,6,8,2,4,6,8,0/
integer::c(10)=0

type aaa
 sequence
  integer k_1(10)
  integer k_2(10)
end type aaa
type (aaa) z(2)

equivalence (b(1),z(1))
equivalence (c(1),z(2))

!$omp parallel workshare
forall (i=1:10,i<2.or.9<i)
   b(i) = i
   c(i) = i
end forall
!$omp end parallel workshare
!$omp parallel workshare
forall (j=z(2)%k_1(1):z(2)%k_1(10))
   z(1)%k_1(j) = z(1)%k_1(j) + b(j)
   z(2)%k_1(j) = ( z(2)%k_1(j) + b(j) ) / 5 + 1
end forall
!$omp end parallel workshare
if ( any(z(1)%k_1/=(/2,4,8,12,16,4,8,12,16,20/)) ) print *,"fail"
if ( any(z(2)%k_1/=(/1,1,2,3,4,1,2,3,4,7/)) ) print *,"fail"
!$omp parallel workshare
forall (j=z(2)%k_1(1):z(2)%k_1(10))
   z(2)%k_1(j) = z(2)%k_1(j) / 2
   z(2)%k_2(j) = b(j) / 2
end forall
!$omp end parallel workshare
if ( any(z(2)%k_1/=(/0,0,1,1,2,0,1,3,4,7/)) ) print *,"fail"
if ( any(z(2)%k_2/=(/1,2,4,6,8,2,4,0,0,0/)) ) print *,"fail"
print *,'pass'
end
