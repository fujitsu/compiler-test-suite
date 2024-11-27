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
  contains
   elemental subroutine ss1(a1,a2,a3)
   integer,intent(in)::a1,a3
   integer,intent(out)::a2
   a2=a1+a3
   end subroutine
 end
 subroutine s1
 use m1
 integer,dimension(2,3,4):: z1=reshape((/(i,i=1,24)/),(/2,3,4/)),z2
 integer,allocatable::v1(:),v2(:),v3(:)
 allocate(v1(2),v2(3),v3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 call ss1(z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2/=m*2))write(6,*) "NG"
 call ss1(z1(v1,v2,v3)+z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z2/=m*4))write(6,*) "NG"
 call ss1(z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*4))write(6,*) "NG"
 call s1x(z1)
  contains
    subroutine s1x(z1)
    integer,dimension(:,:,:)::z1
 call ss1(z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3))
 if (any(z2/=m*2))write(6,*) "NG"
 call ss1(z1(v1,v2,v3)+z1(v1,v2,v3),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(v1,v2,v3)+z1(v1,v2,v3))
 if (any(z2/=m*4))write(6,*) "NG"
 call ss1(z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1)
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(:,:,:),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(:,:,:))
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1),z2(j1:j2:j1,j1:j3,j1:j4:j1),z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*2))write(6,*) "NG"
 call ss1(z1(j1:j2:j1,j1:j3,j1:j4:j1)+z1,z2(j1:j2:j1,j1:j3,j1:j4:j1),z1+z1(j1:j2:j1,j1:j3,j1:j4:j1))
 if (any(z2/=mm*4))write(6,*) "NG"
    end subroutine
 end

