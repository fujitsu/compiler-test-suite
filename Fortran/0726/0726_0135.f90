 call s1
 print *,'pass'
 end
 subroutine s1
 integer,dimension(5,5)::a=reshape((/1,2,1,2,1,&
                                     0,1,2,1,0,&
                                     0,1,2,0,0,&
                                     0,1,0,2,0,&
                                     0,0,2,3,0/),(/5,5/))
 forall (i=1:5)
   where(a(i,:)==0)
     a(:,i) = i
   end where
 end forall
  if (any(a/=reshape(&
(/1,1,1,1,1,0,1,2,1,2,0,1,2,3,0,0,1,4,2,0,0,5,5,5,5/),(/5,5/))))&
write(6,*) "NG"
end
