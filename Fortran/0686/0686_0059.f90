integer::a(5,3)=reshape((/(m1,m1=11,51,10), (m2,m2=12,52,10), &
                          (m3,m3=13,53,10)/),(/5,3/))
integer::b(5,3),c(5,3)
b=a ; c=a

!$omp parallel workshare
forall (j=1:3,i=1:5)
  a(i,j) = a(i,j) + 1
end forall
!$omp end parallel workshare

!$omp parallel workshare
forall (k=1:5)
forall (j=1:3,i=1:5)
  b(i,j) = b(i,j) + 1
end forall
end forall
!$omp end parallel workshare
if ( any(a/=b) ) print *,"fail"

!$omp parallel workshare
forall (j=1:3,i=1:5)
  kk = i
  c(i,j) = c(i,j) + kk
end forall
!$omp end parallel workshare
if ( any( (c-a)/=reshape((/(4,4,4,4,4,m=1,3)/),(/5,3/)) ) ) print *,"fail"

print *,'pass'
end
