 call s1
 print *,'pass'
 end
 module m1
 character,parameter,dimension(2,3,4)::m=char(&
 reshape(&
  (/22,21,24,23,20,19,16,15,18,17,14,13,10,9,12,11,8,7,4,3,6,5,2,1/),&
  (/2,3,4/)))
 character,parameter,dimension(2,3,4)::mm=char(&
 reshape((/(ii,ii=1,24)/),(/2,3,4/)))
 integer::j1=1,j2=2,j3=3,j4=4
 interface operator(*)
   module procedure aster
 end interface
 interface operator(**)
   module procedure asterx
 end interface
 interface operator(+)
   module procedure plus,plus2
 end interface
 interface operator(/)
   module procedure plus3
 end interface
  contains
   elemental function aster(a1,i)
   character*2 aster
   character*(*),intent(in)::a1
   integer      ,intent(in)::i
   select case(i)
     case(2)
       aster=a1//a1
   end select
   end function
   elemental function asterx(a1,i)
   character*4 asterx
   character*(*),intent(in)::a1
   integer      ,intent(in)::i
   select case(i)
     case(4)
       asterx=a1//a1//a1//a1
   end select
   end function
   elemental function plus(a1,i)
   character*3 plus
   character*(*),intent(in)::a1
   integer      ,intent(in)::i
   plus=a1//char(i)
   end function
   elemental function plus2(a1,a2)
   character*2 plus2
   character*(*),intent(in)::a1,a2
   plus2=a1//a2
   end function
   elemental function plus3(a1,i)
   character*5 plus3
   character*(*),intent(in)::a1
   integer      ,intent(in)::i
   plus3=a1//char(i)
   end function
   elemental subroutine ss1(a0,a1,a2,a3)
   entry                ss2(a0,a1,a2,a3)
   character(*),intent(in)::a1,a3,a0
   character(*),intent(out)::a2
   a2=a1//a3//a0
   end subroutine
 end
 subroutine s1
 use m1
 integer,allocatable::v1(:),v2(:),v3(:)
 character,dimension(:,:,:),pointer:: z1,z2*3,z3*5
 character,dimension(:,:,:),pointer:: zz1,zz2*3,zz3*5
 allocate(zz1(2*2,3*2,4*2))
 z1=>zz1(::2,::2,::2); z1=char(reshape((/(i,i=1,24)/),(/2,3,4/)))
 allocate(zz2(2*2,3*2,4*2))
 z2=>zz2(::2,::2,::2)
 allocate(zz3(2*2,3*2,4*2))
 z3=>zz3(::2,::2,::2)

 allocate(v1(2),v2(3),v3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 call ss1(z1(j2,j3,j4),z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2/=m*2+24))write(6,*) "NG"
 call ss2(z1(j2,j3,j4),z1(v1,v2,v3)+z1(v1,v2,v3),z3(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z3/=m**4/24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss2(z1(j2,j3,j4),z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z3(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z3/=mm**4/24))write(6,*) "NG"
 call s1x(z1)
  contains
    subroutine s1x(z1)
    character*(*),dimension(:,:,:)::z1
 call ss1(z1(j2,j3,j4),z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2/=m*2+24))write(6,*) "NG"
 call ss2(z1(j2,j3,j4),z1(v1,v2,v3)+z1(v1,v2,v3),z3(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z3/=m**4/24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss1(z1(j2,j3,j4),z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*2+24))write(6,*) "NG"
 call ss2(z1(j2,j3,j4),z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z3(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z3/=mm**4/24))write(6,*) "NG"
    end subroutine
 end

