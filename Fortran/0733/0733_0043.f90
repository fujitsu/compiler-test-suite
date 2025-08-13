 module m1
 integer,parameter::p=iachar('a')
  contains
   elemental function plus2(a1,a2)
   character*2 plus2
   character*(*),intent(in)::a1,a2
   plus2=a1//a2
   end function
   elemental function ss4(a1)
   character(*),intent(in)::a1
   character(5)::ss4
   ss4=a1
   end function
 end
 use m1
 integer,allocatable::v1(:),v2(:),v3(:)
 integer,allocatable::t1(:),t2(:),t3(:)
 character,dimension(:,:,:),pointer:: z1,z3*5,y1
 character,dimension(:,:,:),pointer:: zz1,zz3*5
 allocate(zz1(2*2,3*2,4*2))
 z1=>zz1(::2,::2,::2); z1=char(reshape((/(i,i=p,p+24-1)/),(/2,3,4/)))
 y1=>z1
 allocate(zz3(2*2,3*2,4*2))
 z3=>zz3(::2,::2,::2)
 allocate(v1(2),v2(3),v3(4))
 allocate(t1(2),t2(3),t3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 t1=(/2,1/);t2=(/2,3,1/);t3=(/4,3,2,1/)
 z3(:,:,1)=ss4(plus2(z1(:,:,1),y1(t1,t2,1)))
 if (any((/z3(:,:,1)/)/=(/'ad','bc','cf','de','eb','fa'/)))print *,'error-1'
 if (any((/ss4(plus2(z1(:,:,1),y1(t1,t2,1)))/)/= &
              (/'ad','bc','cf','de','eb','fa'/)))print *,'error-1'
 write(21,*)ss4(plus2(z1(:,:,1),y1(t1,t2,1)))
rewind 21
read (21,*) z3(:,:,1)
 if (any((/z3(:,:,1)/)/=(/'ad','bc','cf','de','eb','fa'/)))print *,'error-2'
 print *,'pass'
 end
