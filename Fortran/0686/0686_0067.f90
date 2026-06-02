integer:: a(5,3),b(5,3),c(5,3)=reshape((/ 1, 2, 3, 4, 5, &
                                         11,12,13,14,15, &
                                         21,22,23,24,25/),(/5,3/))
!$omp parallel workshare
forall (j=1:3,i=5:1:-1)
  b(i,j) = c(i,j)
  a(i,j) = b(i,j)
end forall
!$omp end parallel workshare
if ( any(a/=b) ) print *,"fail"

!$omp parallel workshare
forall (i=1:5)
  a(i,1) = a(i,2) + 1
end forall
!$omp end parallel workshare
if ( any(a/=reshape((/12,13,14,15,16, &
                      11,12,13,14,15, &
                      21,22,23,24,25/),(/5,3/))) )  print *,"fail"

!$omp parallel workshare
forall (i=1:4)
  b(i+1,1) = b(i,2) + 1
end forall
!$omp end parallel workshare
if ( any(b/=reshape((/ 1,12,13,14,15, &
                      11,12,13,14,15, &
                      21,22,23,24,25/),(/5,3/))) )  print *,"fail"

!$omp parallel workshare
forall (j=1:2)
forall (i=1:4)
  c(i+1,j+1) = c(i,j) + 1
end forall
end forall
!$omp end parallel workshare
if ( any(c/=reshape((/ 1, 2, 3, 4, 5, &
                      11, 2, 3, 4, 5, &
                      21,12,13,14,15/),(/5,3/))) )  print *,"fail"

print *,'pass'
end
