 call s1
 print *,'pass'
 end
 subroutine s1
  integer:: a(-15:-15,3,2,4,1,5:5)=&
         reshape((/(4,5,6,1,2,3,i=1,4)/),(/1,3,2,4,1,1/))
  integer:: b(-15:-15,3,2,4,1,5:5)
  integer:: bb(-15:-15,3,2,4,1,5:5)
  forall (k=-15:-15)
  forall (j=5:5)
  forall (i=1:3)
     where (a(k,i,:,:,:,j)==1) 
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)
     elsewhere (a(k,i,:,:,:,j)==2)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+1
     elsewhere (a(k,i,:,:,:,j)==3)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+2
     else where
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+3
     end where
  end forall
  end forall
  end forall
  if (any((/b/)/=(/(7,8,9,1,3,5,i=1,4)/)))write(6,*) "NG"
  call ss1(a,bb,-15)
  if (any((/bb/)/=(/(7,8,9,1,3,5,i=1,4)/)))write(6,*) "NG"
  contains
   subroutine ss1(a,b,n)
  integer:: a(n:,:,:,:,:,5:)
  integer:: b(n:,:,:,:,:,5:)
  forall (k=n:-15)
  forall (j=5:5)
  forall (i=1:3)
     where (a(k,i,:,:,:,j)==1) 
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)
     elsewhere (a(k,i,:,:,:,j)==2)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+1
     elsewhere (a(k,i,:,:,:,j)==3)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+2
     else where
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+3
     end where
  end forall
  end forall
  end forall
   end subroutine
  end
