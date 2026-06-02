Integer::a(2,2),b(2,2),y(2,2),z(2,2)
a(1,1)=1
a(2,1)=2
a(1,2)=3 
a(2,2)=4 
b(1,1)=1 
b(2,1)=2 
b(1,2)=3 
b(2,2)=4 
call sub1(a,b,y)
call sub2(a,b,z)
if (any(a/=b)) print *,"fail"
print *,'pass'
end

      subroutine sub1(a,b,c)
      integer,dimension(2,2)::a,b,c
      intent(in)::a,b
      intent(out)::c
!$omp parallel
!$omp workshare
      c=matmul(a,b)
!$omp end workshare
!$omp end parallel
      end

      subroutine sub2(a,b,c)
      integer,dimension(2,2)::a,b,c
      intent(in)::a,b
      intent(out)::c
      c=matmul(a,b)
      end
