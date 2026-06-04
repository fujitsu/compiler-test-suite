integer*4 ::a(5,3)= 0 ,b(5,3) = 0
integer*4 ::c(5,3)= 5 ,d(5,3) = 5

!$omp parallel workshare
FORALL ( i=1:2  )
    FORALL ( j=1:5 )
       a(j,i) = real(j)
       b(j,i) = real(j)
    ENDFORALL
ENDFORALL
!$omp end parallel workshare

!$omp parallel workshare
FORALL ( i=3: 1: -1 )
    FORALL ( j=5: 2: -1 )
       a(j,i) = a(j,i) + a(j-1,i)
       c(j,i) = c(j,i) + a(j-1,i)
    ENDFORALL
ENDFORALL
!$omp end parallel workshare

do i = 3, 1, -1
    do j = 5, 2, -1
        b(j,i) = b(j,i) + b(j-1,i)
    enddo
enddo
do i = 3, 1, -1
    do j = 5, 2, -1
        d(j,i) = d(j,i) + b(j-1,i)
    enddo
enddo

if ( any(a/=b) ) print *,"fail"
if ( any(c/=d) ) print *,"fail"
print *,'pass'
end
