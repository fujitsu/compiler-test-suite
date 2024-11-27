   subroutine sub(i,a,aa,b,bb)
   integer ::a(i,i),b(3,3),aa(i,i),bb(3,3)
   where (a==1)
    b=1
     where (aa==1)
       bb=1
     elsewhere (aa==2)
       bb=2
     else where
       bb=3
     end where
   elsewhere (a==2)
     where (aa==1)
       bb=1
     elsewhere (aa==2)
       bb=2
     else where
       bb=3
     end where
    b=2
   else where
    b=3
     where (aa==1)
       bb=1
     elsewhere (aa==2)
       bb=2
     else where
       bb=3
     end where
   end where
   end
   parameter(i=3)
   integer ::a(i,i),b(3,3),aa(i,i),bb(3,3)
   a(1,:)=1
   a(2,:)=2
   a(3,:)=3
   aa(:,1)=1
   aa(:,2)=2
   aa(:,3)=3
   call  sub(i,a,aa,b,bb)
if(any((/a/)/=(/1,2,3,1,2,3,1,2,3/)))write(6,*) "NG"
if(any((/b/)/=(/1,2,3,1,2,3,1,2,3/)))write(6,*) "NG"
if(any((/aa/)/=(/1,1,1,2,2,2,3,3,3/)))write(6,*) "NG"
if(any((/bb/)/=(/1,1,1,2,2,2,3,3,3/)))write(6,*) "NG"
   print *,'pass'
   end
