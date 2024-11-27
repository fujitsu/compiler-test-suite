 module m1
  logical,parameter::t=.true.,f=.false.
  type x
   integer,dimension(4)::a=(/1,20,1,1/)
   integer,dimension(4)::b=(/1,20,1,1/)
   integer,dimension(4)::aa=(/1,20,1,1/)
   integer,dimension(4)::ba=(/1,20,1,1/)
   logical(1),dimension(4)::c1=(/t,f,f,t/)
   logical(1),dimension(4)::c2=(/t,f,f,t/)
   logical(1),dimension(4)::c3=(/t,f,f,t/)
   logical(1),dimension(4)::c4=(/t,f,f,t/)
   logical(2),dimension(4)::d1=(/t,f,f,t/)
   logical(2),dimension(4)::d2=(/t,f,f,t/)
   logical(2),dimension(4)::d3=(/t,f,f,t/)
   logical(2),dimension(4)::d4=(/t,f,f,t/)
   logical(4),dimension(4)::e1=(/t,f,f,t/)
   logical(4),dimension(4)::e2=(/t,f,f,t/)
   logical(4),dimension(4)::e3=(/t,f,f,t/)
   logical(4),dimension(4)::e4=(/t,f,f,t/)
   logical(8),dimension(4)::f1=(/t,f,f,t/)
   logical(8),dimension(4)::f2=(/t,f,f,t/)
   logical(8),dimension(4)::f3=(/t,f,f,t/)
   logical(8),dimension(4)::f4=(/t,f,f,t/)
  end type
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
   forall(i=1:3,z%a(i)>1.and.z%b(i)>1)
     z%a(i+1)=100
     z%b(i+1)=100
     z%aa(i+1)=100
     z%ba(i+1)=100
   end forall
   if (any(z%a/=(/1,20,100,1/)))write(6,*) "NG"
   if (any(z%aa/=(/1,20,100,1/)))write(6,*) "NG"
   if (any(z%b/=(/1,20,100,1/)))write(6,*) "NG"
   if (any(z%ba/=(/1,20,100,1/)))write(6,*) "NG"
end
subroutine ss2
use m1
 type(x)::z
   forall(i=1:3,z%d1(i).and.z%d2(i))
     z%d1(i+1)=.not.z%d1(i+1)
     z%d2(i+1)=.not.z%d2(i+1)
     z%d3(i+1)=.not.z%d3(i+1)
     z%d4(i+1)=.not.z%d4(i+1)
   end forall
   if (any(z%d1.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%d2.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%d3.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%d4.neqv.(/t,t,f,t/)))write(6,*) "NG"
end
subroutine ss3
use m1
 type(x)::z
   forall(i=1:3,z%e1(i).and.z%e2(i))
     z%e1(i+1)=.not.z%e1(i+1)
     z%e2(i+1)=.not.z%e2(i+1)
     z%e3(i+1)=.not.z%e3(i+1)
     z%e4(i+1)=.not.z%e4(i+1)
   end forall
   if (any(z%e1.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%e2.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%e3.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%e4.neqv.(/t,t,f,t/)))write(6,*) "NG"
end
subroutine ss4
use m1
 type(x)::z
   forall(i=1:3,z%f1(i).and.z%f2(i))
     z%f1(i+1)=.not.z%f1(i+1)
     z%f2(i+1)=.not.z%f2(i+1)
     z%f3(i+1)=.not.z%f3(i+1)
     z%f4(i+1)=.not.z%f4(i+1)
   end forall
   if (any(z%f1.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%f2.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%f3.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%f4.neqv.(/t,t,f,t/)))write(6,*) "NG"
end
subroutine ss5
use m1
 type(x)::z
   forall(i=1:3,z%c1(i).and.z%c2(i))
     z%c1(i+1)=.not.z%c1(i+1)
     z%c2(i+1)=.not.z%c2(i+1)
     z%c3(i+1)=.not.z%c3(i+1)
     z%c4(i+1)=.not.z%c4(i+1)
   end forall
   if (any(z%c1.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%c2.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%c3.neqv.(/t,t,f,t/)))write(6,*) "NG"
   if (any(z%c4.neqv.(/t,t,f,t/)))write(6,*) "NG"
end
        
