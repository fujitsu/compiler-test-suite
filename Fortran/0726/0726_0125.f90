 call s1
 print *,'pass'
 end
 subroutine s1
   integer,dimension(5,2)::a=reshape((/1,0,3,0,5,0,6,0,8,0,10/),(/5,2/))
   integer,dimension(5,2)::aa=reshape((/1,0,3,0,5,0,6,0,8,0,10/),(/5,2/))
   forall(i=1:5)
     where (a(i,:)==0)
       a(i,:)=-1
     end where
   end forall
   do i=1,5
     where (aa(i,:)==0)
       aa(i,:)=-1
     end where
   end do
   if (any((/a/)/=(/1,-1,3,-1,5,-1,6,-1,8,-1/)))write(6,*) "NG"
   if (any((/aa/)/=(/1,-1,3,-1,5,-1,6,-1,8,-1/)))write(6,*) "NG"
      END
