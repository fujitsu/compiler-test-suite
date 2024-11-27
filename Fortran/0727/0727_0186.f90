   integer,dimension(2,2)::a=reshape((/11,-2,21,1/),(/2,2/))
   forall(i=1:2)
   forall(m=1:2,&
           a(i,m)>1)
     a(i+1,m)=100
   end forall
   end forall
   if (a(1,1)/=11)write(6,*) "NG"
   if (a(2,2)/=100)write(6,*) "NG"
   if (a(1,2)/=21)write(6,*) "NG"
   if (a(2,2)/=100)write(6,*) "NG"
   call ss1
   call ss2
   call ss3
   call ss4
   print *,'pass'
end
 subroutine ss1
   integer,dimension(2,2,2,2,2)::a
   a(1,:,:,:,:)=2; a(2,:,:,:,:)=-1
   forall(i1=1:2)
   forall(i2=1:2)
   forall(i3=1:2)
   forall(i4=1:2)
   forall(m=1:2,&
           a(i1,i2,i3,i4,m)==2)
     a(i1+1,i2,i3,i4,m)=2
   end forall
   end forall
   end forall
   end forall
   end forall
   if (any(a/=2))write(6,*) "NG"
   end
 subroutine ss2
   integer,dimension(2,2,2,2,2)::a
   a(1,:,:,:,:)=2; a(2,:,:,:,:)=-1
   forall(i1=1:2)
   forall(i2=1:2,i3=1:2)
   forall(i4=1:2)
   forall(m=1:2,&
           a(i1,i2,i3,i4,m)==2)
     a(i1+1,i2,i3,i4,m)=2
   end forall
   end forall
   end forall
   end forall
   if (any(a/=2))write(6,*) "NG"
   end
 subroutine ss3
   integer,dimension(2,2,2,2,2,2,2)::a
   a(1,:,:,:,:,:,:)=2; a(2,:,:,:,:,:,:)=-1
   forall(i1=1:2)
   forall(i2=1:2)
   forall(i3=1:2)
   forall(i4=1:2)
   forall(m=1:2,&
           a(i1,i2,i3,i4,m,2,2)==2)
   forall(i5=1:2)
   forall(i6=1:2)
     a(i1+1,i2,i3,i4,m,2,2)=2
   end forall
   end forall
   end forall
   end forall
   end forall
   end forall
   end forall
   if (any(a(:,:,:,:,:,2,2)/=2))write(6,*) "NG"
   end
 subroutine ss4
   integer,dimension(2,2,2,2,2,2,2)::a
   a(1,:,:,:,:,:,:)=2; a(2,:,:,:,:,:,:)=-1
   forall(i1=1:2)
   forall(i2=1:2)
   forall(i3=1:2)
   forall(i4=1:2)
   forall(m=1:2,&
           a(i1,i2,i3,i4,m,2,2)==2)
   forall(i5=2:2)
   forall(i6=2:2)
     a(i1+1,i2,i3,i4,m,i5,i6)=2
   end forall
   end forall
   end forall
   end forall
   end forall
   end forall
   end forall
   if (any(a(:,:,:,:,:,2,2)/=2))write(6,*) "NG"
   end


