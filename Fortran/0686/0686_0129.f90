integer :: a(3,3)=0,b(3,3)=reshape((/1,2,0,3,1,2,0,3,1/),(/3,3/))

!$omp parallel workshare
forall ( i = 1:3, j = 1:3, b(i,j) /= 0 )
    a(i,j) = int(i+j-2)
    b(i,j) = a(i,j) + b(i,j) + int(i*j)
endforall
!$omp end parallel workshare
if ( any((/a/)/=(/0,1,0,1,2,3,0,3,4/)) ) print *,"fail"
if ( any((/b/)/=(/2,5,0,6,7,11,0,12,14/)) ) print *,"fail"
print *,'pass'
end
