 call s1
 print *,'pass'
 end
 module m1
 integer,parameter,dimension(2,3,4)::m=&
 reshape(&
  (/22,21,24,23,20,19,16,15,18,17,14,13,10,9,12,11,8,7,4,3,6,5,2,1/),&
  (/2,3,4/))
 integer,parameter,dimension(2,3,4)::mm=&
 reshape((/(ii,ii=1,24)/),(/2,3,4/))
 integer::j1=1,j2=2,j3=3,j4=4
 type w;integer(kind=4) ::ww=-99999;end type
  interface operator(+)
    module procedure plus
  end interface
  contains
   elemental function plus(a1,a2)
   type(w)::plus
   type(w),intent(in)::a1,a2
   plus%ww = a1%ww + a2%ww
   end function
   elemental subroutine ss1(a1,a2,a3)
   type(w),intent(in)::a1,a3
   type(w),intent(out)::a2
   a2%ww=a1%ww+a3%ww
   end subroutine
 end
 subroutine s1
 use m1
 integer,allocatable::v1(:),v2(:),v3(:)
 type(w),dimension(:,:,:),pointer:: z1,z2
 type(w),dimension(:,:,:),pointer:: zz1,zz2
 allocate(zz1(2*2,3*2,4*2))
 z1=>zz1(::2,::2,::2); z1=reshape((/(w(i),i=1,24)/),(/2,3,4/))
 allocate(zz2(2*2,3*2,4*2))
 z2=>zz2(::2,::2,::2)

 allocate(v1(2),v2(3),v3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 call ss1(z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2%ww/=m*2))write(6,*) "NG"
 call ss1(z1(v1,v2,v3)+z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z2%ww/=m*4))write(6,*) "NG"
 call ss1(z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2%ww/=mm*4))write(6,*) "NG"
 call s1x(z1)
  contains
    subroutine s1x(z1)
    type(w),dimension(:,:,:)::z1
 call ss1(z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2%ww/=m*2))write(6,*) "NG"
 call ss1(z1(v1,v2,v3)+z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z2%ww/=m*4))write(6,*) "NG"
 call ss1(z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2%ww/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2%ww/=mm*4))write(6,*) "NG"
    end subroutine
 end

