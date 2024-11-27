module mod1
  integer,protected :: i, n=3 , j  
  contains
   subroutine sub1(i,j)
   integer a(3,3)
   parameter (n=3)
   a=reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
   m=3
   forall (i=1:n-1)
     forall (j=i+1:m)
       a(i,j)=a(j,i)
     end forall
   end forall
   if(any(a/=reshape((/0,1,2,1,4,5,2,5,8/),(/3,3/)))) write(6,*) "NG"
   end subroutine
end module
use mod1
   integer a(3,3)
   a=reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
   m=3
   forall (i=1:n-1)
     forall (j=i+1:m)
       a(i,j)=a(j,i)
     end forall
   end forall
   if(any(a/=reshape((/0,1,2,1,4,5,2,5,8/),(/3,3/)))) write(6,*) "NG"
call sub1(i,j)
print *,'pass'
end
