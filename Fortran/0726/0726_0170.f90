 call s1
 print *,'pass'
 end
 subroutine s1
 integer,dimension(5,3)::a=reshape((/(i,i=1,15)/),(/5,3/))
 integer,dimension(5,3)::b=-1
 forall (j=1:5)
   where(mod(a(j,:),2)==0)
     b(j,:) = 2
   end where
 end forall
  if (any((/b/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
end
