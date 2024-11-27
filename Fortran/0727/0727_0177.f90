 module m1
  logical,parameter::t=.true.,f=.false.
  type x
   integer,dimension(2,1,1,2)::a1=reshape((/11,-1,21,1,31,0/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::a2=reshape((/11,-1,21,1,31,0/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::a3=reshape((/11,-1,21,1,31,0/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::a4=reshape((/11,-1,21,1,31,0/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d1=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d2=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d3=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d4=reshape((/t,f,t,f/),(/2,1,1,2/))
   integer,dimension(2,1,1,2,1,1,2)::b1=reshape((/11,-1,21,1,31,0,41,0/),(/2,1,1,2,1,1,2/))
   integer,dimension(2,1,1,2,1,1,2)::b2=reshape((/11,-1,21,1,31,0,41,0/),(/2,1,1,2,1,1,2/))
   integer,dimension(2,1,1,2,1,1,2)::b3=reshape((/11,-1,21,1,31,0,41,0/),(/2,1,1,2,1,1,2/))
   integer,dimension(2,1,1,2,1,1,2)::b4=reshape((/11,-1,21,1,31,0,41,0/),(/2,1,1,2,1,1,2/))
   logical(2),dimension(2,1,1,2,1,1,2)::c1=reshape((/t,f,t,f,t,f,t,f/),(/2,1,1,2,1,1,2/))
   logical(2),dimension(2,1,1,2,1,1,2)::c2=reshape((/t,f,t,f,t,f,t,f/),(/2,1,1,2,1,1,2/))
   logical(2),dimension(2,1,1,2,1,1,2)::c3=reshape((/t,f,t,f,t,f,t,f/),(/2,1,1,2,1,1,2/))
   logical(2),dimension(2,1,1,2,1,1,2)::c4=reshape((/t,f,t,f,t,f,t,f/),(/2,1,1,2,1,1,2/))
  end type
   integer::j1=1,k1=1,j2=2
end
call s1
   print *,'pass'
end
   subroutine s1
   call ss1
   call ss2
end
subroutine ss1
use m1
 type(x)::z
   forall(i=k1:j2)
   forall(j=j1:k1)
   forall(k=j1:k1)
   forall(m=j1:j2,&
           z%a1(i,j,k,m)>1.and.z%a2(i,j,k,m)>1)
     z%a1(i+1,j,k,m)=z%a1(i,j,k,m)
     z%a2(i+1,j,k,m)=z%a2(i,j,k,m)
     z%a3(i+1,j,k,m)=z%a3(i,j,k,m)
     forall (ii=k1:j1,jj=k1:j1,kk=j1:j2,&
           z%a1(i,j,k,m)>1.and.z%a2(i,j,k,m)>1)
     z%b1(i+1,j,k,m,ii,jj,kk)=z%b1(i,j,k,m,ii,jj,kk)
     z%b2(i+1,j,k,m,ii,jj,kk)=z%b2(i,j,k,m,ii,jj,kk)
     z%b3(i+1,j,k,m,ii,jj,kk)=z%b3(i,j,k,m,ii,jj,kk)
     z%b4(i+1,j,k,m,ii,jj,kk)=z%b4(i,j,k,m,ii,jj,kk)
     end forall
     z%a4(i+1,j,k,m)=z%a4(i,j,k,m)
   end forall
   end forall
   end forall
   end forall
   if (any((/z%a1/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%a2/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%a3/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%a4/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%b1/)/=(/11,11,21,21,31,31,41,41/)))write(6,*) "NG"
   if (any((/z%b2/)/=(/11,11,21,21,31,31,41,41/)))write(6,*) "NG"
   if (any((/z%b3/)/=(/11,11,21,21,31,31,41,41/)))write(6,*) "NG"
   if (any((/z%b4/)/=(/11,11,21,21,31,31,41,41/)))write(6,*) "NG"
end
subroutine ss2
use m1
 type(x)::z
   forall(i=k1:j2)
   forall(j=j1:k1)
   forall(k=j1:k1)
   forall(m=j1:j2,&
           z%d1(i,j,k,m).and.z%d2(i,j,k,m))
     z%d1(i+1,j,k,m)=.not.z%d1(i+1,j,k,m)
     z%d2(i+1,j,k,m)=.not.z%d2(i+1,j,k,m)
     z%d3(i+1,j,k,m)=.not.z%d3(i+1,j,k,m)
     z%d4(i+1,j,k,m)=.not.z%d4(i+1,j,k,m)
     forall (ii=k1:j1)
     forall (jj=k1:j1)
     forall (kk=j1:j2)
     z%c1(i+1,j,k,m,ii,jj,kk)=z%c1(i,j,k,m,ii,jj,kk)
     z%c2(i+1,j,k,m,ii,jj,kk)=z%c2(i,j,k,m,ii,jj,kk)
     z%c3(i+1,j,k,m,ii,jj,kk)=z%c3(i,j,k,m,ii,jj,kk)
     z%c4(i+1,j,k,m,ii,jj,kk)=z%c4(i,j,k,m,ii,jj,kk)
     end forall
     end forall
     end forall
   end forall
   end forall
   end forall
   end forall
   if (any(.not.z%d1))write(6,*) "NG"
   if (any(.not.z%d2))write(6,*) "NG"
   if (any(.not.z%d3))write(6,*) "NG"
   if (any(.not.z%d4))write(6,*) "NG"
   if (any(.not.z%c1))write(6,*) "NG"
   if (any(.not.z%c2))write(6,*) "NG"
   if (any(.not.z%c3))write(6,*) "NG"
   if (any(.not.z%c4))write(6,*) "NG"
end
