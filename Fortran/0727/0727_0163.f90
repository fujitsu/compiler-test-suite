 module m1
  logical,parameter::t=.true.,f=.false.
  type x
   integer,dimension(2,1,1,2)::a=reshape((/11,-2,21,1/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::b=reshape((/11,-2,21,1/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::aa=reshape((/11,-2,21,1/),(/2,1,1,2/))
   integer,dimension(2,1,1,2)::ba=reshape((/11,-2,21,1/),(/2,1,1,2/))
   logical(1),dimension(2,1,1,2)::c1=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(1),dimension(2,1,1,2)::c2=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(1),dimension(2,1,1,2)::c3=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(1),dimension(2,1,1,2)::c4=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d1=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d2=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d3=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(2),dimension(2,1,1,2)::d4=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(4),dimension(2,1,1,2)::e1=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(4),dimension(2,1,1,2)::e2=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(4),dimension(2,1,1,2)::e3=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(4),dimension(2,1,1,2)::e4=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(8),dimension(2,1,1,2)::f1=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(8),dimension(2,1,1,2)::f2=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(8),dimension(2,1,1,2)::f3=reshape((/t,f,t,f/),(/2,1,1,2/))
   logical(8),dimension(2,1,1,2)::f4=reshape((/t,f,t,f/),(/2,1,1,2/))
  end type
   integer::j1=1,k1=1,j2=2
end
call s1
   print *,'pass'
end
   subroutine s1
   call ss1
   call ss2
   call ss3
   call ss4
   call ss5
end
subroutine ss1
use m1
 type(x)::z
   forall(i=k1:j2,j=j1:k1,k=j1:k1,m=j1:j2,&
           z%a(i,j,k,m)>1.and.z%b(i,j,k,m)>1)
     z%a(i+1,j,k,m)=z%a(i,j,k,m)
     z%b(i+1,j,k,m)=z%b(i,j,k,m)
     z%aa(i+1,j,k,m)=z%aa(i,j,k,m)
     z%ba(i+1,j,k,m)=z%ba(i,j,k,m)
   end forall
   if (any((/z%a/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%aa/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%b/)/=(/11,11,21,21/)))write(6,*) "NG"
   if (any((/z%ba/)/=(/11,11,21,21/)))write(6,*) "NG"
end
subroutine ss2
use m1
 type(x)::z
   forall(i=k1:j2,j=j1:k1,k=j1:k1,m=j1:j2,&
           z%d1(i,j,k,m).and.z%d2(i,j,k,m))
     z%d1(i+1,j,k,m)=.not.z%d1(i+1,j,k,m)
     z%d2(i+1,j,k,m)=.not.z%d2(i+1,j,k,m)
     z%d3(i+1,j,k,m)=.not.z%d3(i+1,j,k,m)
     z%d4(i+1,j,k,m)=.not.z%d4(i+1,j,k,m)
   end forall
   if (any((/z%d1/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%d2/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%d3/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%d4/).neqv.(/t,t,t,t/)))write(6,*) "NG"
end
subroutine ss3
use m1
 type(x)::z
   forall(i=k1:j2,j=j1:k1,k=j1:k1,m=j1:j2,&
           z%e1(i,j,k,m).and.z%e2(i,j,k,m))
     z%e1(i+1,j,k,m)=.not.z%e1(i+1,j,k,m)
     z%e2(i+1,j,k,m)=.not.z%e2(i+1,j,k,m)
     z%e3(i+1,j,k,m)=.not.z%e3(i+1,j,k,m)
     z%e4(i+1,j,k,m)=.not.z%e4(i+1,j,k,m)
   end forall
   if (any((/z%e1/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%e2/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%e3/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%e4/).neqv.(/t,t,t,t/)))write(6,*) "NG"
end
subroutine ss4
use m1
 type(x)::z
   forall(i=k1:j2,j=j1:k1,k=j1:k1,m=j1:j2,&
           z%f1(i,j,k,m).and.z%f2(i,j,k,m))
     z%f1(i+1,j,k,m)=.not.z%f1(i+1,j,k,m)
     z%f2(i+1,j,k,m)=.not.z%f2(i+1,j,k,m)
     z%f3(i+1,j,k,m)=.not.z%f3(i+1,j,k,m)
     z%f4(i+1,j,k,m)=.not.z%f4(i+1,j,k,m)
   end forall
   if (any((/z%f1/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%f2/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%f3/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%f4/).neqv.(/t,t,t,t/)))write(6,*) "NG"
end
subroutine ss5
use m1
 type(x)::z
   forall(i=k1:j2,j=j1:k1,k=j1:k1,m=j1:j2,&
           z%c1(i,j,k,m).and.z%c2(i,j,k,m))
     z%c1(i+1,j,k,m)=.not.z%c1(i+1,j,k,m)
     z%c2(i+1,j,k,m)=.not.z%c2(i+1,j,k,m)
     z%c3(i+1,j,k,m)=.not.z%c3(i+1,j,k,m)
     z%c4(i+1,j,k,m)=.not.z%c4(i+1,j,k,m)
   end forall
   if (any((/z%c1/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%c2/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%c3/).neqv.(/t,t,t,t/)))write(6,*) "NG"
   if (any((/z%c4/).neqv.(/t,t,t,t/)))write(6,*) "NG"
end
        
