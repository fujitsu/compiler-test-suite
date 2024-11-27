 call s1
 print *,'pass'
 end
 subroutine s1
 integer:: a(3,2,1)=reshape((/1,2,3,0,0,0/),(/3,2,1/))
 integer:: aa(3,2,1)=reshape((/1,2,3,0,0,0/),(/3,2,1/))
 integer:: b(3,2,1)=-9
 forall (i=1:3)
 forall (j=aa(min(i,1),1,1):aa(max(i-1,2),1,1))
   a(i,j,:)=-1
   b(i,j,:)=-1
 end forall;end forall
 if (any(a/=-1))write(6,*) "NG"
 if (any(b/=-1))write(6,*) "NG"
 end
