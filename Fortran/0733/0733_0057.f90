 module m1
  contains
   elemental function plus2(a1,a2)
   character*2 plus2
   character*(*),intent(in)::a1,a2
   plus2=a1//a2
   end function
   elemental subroutine ss4(a1,a2)
   character(*),intent(in)::a1
   character(*),intent(out)::a2
   a2=a1
   end subroutine
 end
 use m1
 integer,allocatable::v1(:),v2(:),v3(:)
 integer,allocatable::t1(:),t2(:),t3(:)
 character,dimension(:,:,:),pointer:: z1,z3*5,y1
 character,dimension(:,:,:),pointer:: zz1,zz3*5
 allocate(zz1(2*2,3*2,4*2))
 z1=>zz1(::2,::2,::2); z1=char(reshape((/(i,i=1,24)/),(/2,3,4/)))
 y1=>z1
 allocate(zz3(2*2,3*2,4*2))
 z3=>zz3(::2,::2,::2)
 allocate(v1(2),v2(3),v3(4))
 allocate(t1(2),t2(3),t3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 t1=(/2,1/);t2=(/2,3,1/);t3=(/4,3,2,1/)
 call ss4(plus2(z1(:,:,1),y1(t1,t2,1)),z3(:,:,1))
 print *,'pass'
 end