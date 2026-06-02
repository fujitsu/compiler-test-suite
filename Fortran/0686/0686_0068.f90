integer:: a(2,2,2,2)=reshape((/1111,1112 , 1121,1122, &
                               1211,1212 , 1221,1222, &
                               2111,2112 , 2121,2122, &
                               2211,2212 , 2221,2222/),(/2,2,2,2/))
integer:: b(2,2,2,2)
b = a
kk=0

!$omp parallel workshare
forall (k=1:2)
forall (j=1:2)
forall (i=1:2)
  a(i,j,k,2) = a(i,j,k,1) + 1
endforall
endforall
endforall
!$omp end parallel workshare
if (any(a/=reshape((/1111,1112,1121,1122,1211,1212,1221,1222, &
                     1112,1113,1122,1123,1212,1213,1222,1223/), &
                                         (/2,2,2,2/))) )print *,"fail"

!$omp parallel workshare
forall (i=1:2)
    kk = kk + i
forall (j=1:2)
  b(kk,1,j,2) = b(kk,1,j,2) + 1
endforall
endforall
!$omp end parallel workshare
if (any(b/=reshape((/1111,1112,1121,1122,1211,1212,1221,1222, &
                     2111,2113,2121,2122,2211,2213,2221,2222/), &
                                         (/2,2,2,2/))) ) print *,"fail"


print *,'pass'
end
