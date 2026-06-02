integer::a(3,3)=reshape((/(m,m=0,8)/),(/3,3/))
integer,parameter::n=3
!$omp parallel workshare
forall  (i=1:n-1)
    forall (j=i+1:n)
        a(i,j) = a(j,i)
    endforall
endforall
!$omp end parallel workshare
if (any((/a/)/=(/0,1,2,1,4,5,2,5,8/))) print *,"fail"
print *,'pass'
end
