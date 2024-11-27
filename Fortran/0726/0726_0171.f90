 call s1
 print *,'pass'
 end
 subroutine s1
 integer,dimension(5,3)::a=reshape((/(i,i=1,15)/),(/5,3/))
 integer,dimension(5,3)::b=-1,bb=-1,bbb=-1,bbbb=-1,bbbbb=-1
 integer,dimension(5,3)::c=4
 integer,dimension(5,3)::cc=reshape((/(0,2,i=1,7),0/),(/5,3/))
 forall (j=1:5)
   where(mod(a(j,:),2)==0)
     b(j,:) = c(j,:)/cc(j,:)
     bb(j,:) = c(j,:)/cc(j,:)
     bbb(j,:) = c(j,:)/cc(j,:)
     bbbb(j,:) = c(j,:)/cc(j,:)
     bbbbb(j,:) = c(j,:)/cc(j,:)
   end where
 end forall
  if (any((/b/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbbbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  call ss1(a,b,bb,bbb,bbbb,bbbbb,c,cc)
  contains
    subroutine ss1(a,b,bb,bbb,bbbb,bbbbb,c,cc)
    integer,dimension(:,:)::a,b,bb,bbb,bbbb,bbbbb,c,cc
 forall (j=1:size(a(:,1)))
   where(mod(a(j,:),2)==0)
     b(j,:) = c(j,:)/cc(j,:)
     bb(j,:) = c(j,:)/cc(j,:)
     bbb(j,:) = c(j,:)/cc(j,:)
     bbbb(j,:) = c(j,:)/cc(j,:)
     bbbbb(j,:) = c(j,:)/cc(j,:)
   end where
 end forall
  if (any((/b/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
  if (any((/bbbbb/)/=(/-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1,2,-1/)))write(6,*) "NG"
end subroutine
end
