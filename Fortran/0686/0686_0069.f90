integer:: a(2,2,4)=reshape((/111,112,121,122, &
                             211,212,221,222, &
                             311,312,321,322, &
                             411,412,421,422/),(/2,2,4/))
integer:: b(2,2,4),c(2,2,4)
integer:: d(2,2,4)=reshape((/111,211,121,221, &
                             112,212,122,222, &
                             113,213,123,223, &
                             114,214,124,224/),(/2,2,4/))
kk=0
b=a;c=b

!$omp parallel workshare
forall (k=1:4)
forall (j=1:2)
forall (i=1:2)
  a(i,j,k) = a(i,j,k) + 1
endforall
endforall
endforall
!$omp end parallel workshare
if ( any( a /= reshape((/112,113,122,123, &
                         212,213,222,223, &
                         312,313,322,323, &
                         412,413,422,423/),(/2,2,4/)))) print *,"fail"

!$omp parallel workshare
forall (j=1:2)
  kk = kk + j
  b(kk,j,j) = b(kk,j,j) + 1
endforall
!$omp end parallel workshare
if ( any( b /= reshape((/111,113,121,122, &
                         211,212,221,223, &
                         311,312,321,322, &
                         411,412,421,422/),(/2,2,4/)))) print *,"fail"

!$omp parallel workshare
forall (i=1:4)
forall (j=1:2)
  c(j,j,i) = c(j,j,i) + 1
endforall
endforall
!$omp end parallel workshare
if ( any( c /= reshape((/112,112,121,123, &
                         212,212,221,223, &
                         312,312,321,323, &
                         412,412,421,423/),(/2,2,4/)))) print *,"fail"

!$omp parallel workshare
forall (j=1:2)
forall (i=1:2)
  d(i,j,i+j) = d(i,j,i+j) + 1
endforall
endforall
!$omp end parallel workshare
if ( any( d /= reshape((/111,211,121,221, &
                         113,212,122,222, &
                         113,214,124,223, &
                         114,214,124,225/),(/2,2,4/)))) print *,"fail"
print *,'pass'
end
