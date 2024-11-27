 call s1
 print *,'pass'
 end
 subroutine s1
  integer:: a(3,2,4)=reshape((/(4,5,6,1,2,3,i=1,4)/),(/3,2,4/))
  integer:: b(3,2,4),c(3,2,4)
  integer:: bb(3,2,4),cc(3,2,4)
  forall (i=1:3)
     where (a(i,:,:)==1) 
       b(i,:,:)=a(i,:,:)
       c(i,:,:)=a(i,:,:)+a(i,:,:)
     elsewhere (a(i,:,:)==2)
       b(i,:,:)=a(i,:,:)+1
       c(i,:,:)=a(i,:,:)*a(i,:,:)
     elsewhere (a(i,:,:)==3)
       b(i,:,:)=a(i,:,:)+2
       c(i,:,:)=a(i,:,:)+a(i,:,:)+a(i,:,:)
     else where
       b(i,:,:)=a(i,:,:)+3
       c(i,:,:)=a(i,:,:)+a(i,:,:)+a(i,:,:)+a(i,:,:)
     end where
  end forall
  if (any((/b/)/=(/(7,8,9,1,3,5,i=1,4)/)))write(6,*) "NG"
  if (any((/c/)/=(/(16,20,24,2,4,9,i=1,4)/)))write(6,*) "NG"
  call ss1(bb,cc)
  contains
  subroutine ss1(b,c)
  integer:: b(:,:,:),c(:,:,:)
  forall (i=size(bb)-23:size(bb(:,1,1)):size(bb)-23)
     where (a(i,:,:)==1) 
       b(i,:,:)=a(i,:,:)
       c(i,:,:)=a(i,:,:)+a(i,:,:)
     elsewhere (a(i,:,:)==2)
       b(i,:,:)=a(i,:,:)+1
       c(i,:,:)=a(i,:,:)*a(i,:,:)
     elsewhere (a(i,:,:)==3)
       b(i,:,:)=a(i,:,:)+2
       c(i,:,:)=a(i,:,:)+a(i,:,:)+a(i,:,:)
     else where
       b(i,:,:)=a(i,:,:)+3
       c(i,:,:)=a(i,:,:)+a(i,:,:)+a(i,:,:)+a(i,:,:)
     end where
  end forall
  if (any((/b/)/=(/(7,8,9,1,3,5,i=1,4)/)))write(6,*) "NG"
  if (any((/c/)/=(/(16,20,24,2,4,9,i=1,4)/)))write(6,*) "NG"
  end subroutine
  end
