 call s1
 print *,'pass'
 end
 subroutine s1
   integer,dimension(5,2)::a=reshape((/1,0,3,0,5,0,6,0,8,0,10/),(/5,2/))
   integer,dimension(5,2)::aa=reshape((/1,0,3,0,5,0,6,0,8,0,10/),(/5,2/))
   integer,dimension(5,2)::aaa=reshape((/1,0,3,0,5,0,6,0,8,0,10/),(/5,2/))
   integer,dimension(5,2)::b1=reshape((/0,-1,0,-2,0,-3,0,-4,0,-5/),(/5,2/))
   integer,dimension(5,2)::b2=reshape((/0, 1,0, 1,0, 1,0, 1,0, 1/),(/5,2/))
   forall(i=1:5)
     where (aaa(i,:)==0)
       a(i,:)=b1(i,:)/b2(i,:)
     end where
   end forall
   do i=1,5
     where (aa(i,:)==0)
       aa(i,:)=b1(i,:)/b2(i,:)
     end where
   end do
   if (any((/a/)/=(/1,-1,3,-2,5,-3,6,-4,8,-5/)))write(6,*) "NG"
   if (any((/aa/)/=(/1,-1,3,-2,5,-3,6,-4,8,-5/)))write(6,*) "NG"
      END
