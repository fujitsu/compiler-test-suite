integer:: a(5) /1,2,3,4,5/
integer:: b(5) /1,2,3,4,5/

!$omp parallel workshare
forall (i=1:4)
  a(i+1) = a(i)
end forall
!$omp end parallel workshare
do      i=1,4 
  b(i+1) = b(i)
end do     
if (any((a-b)/=(/0,0,1,2,3/))) print *,"fail"
print *,'pass'
end

