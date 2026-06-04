integer*4 a(3)/1,2,3/
integer*4 b(3,3)/1,2,3,1,2,3,1,2,3/, bb(3,3)/1,2,3,1,2,3,1,2,3/

!$omp parallel workshare
forall ( j = b(1,3) : b(a(3),3) )
  forall ( i = b(1,j) : b(a(3),j) )
    b(i,j) =  bb(i,j) + 1 
  end forall
end forall
!$omp end parallel workshare
if ( any(b/=reshape((/2,3,4,2,3,4,2,3,4/),(/3,3/))) ) print *,"fail"
print *,'pass'
end
