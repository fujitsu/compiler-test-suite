 call s1
 print *,'pass'
 end
 subroutine s1
   integer,dimension(6,6)::mm1,mm2,mm3,mm4,mm5,mm6,mm7,mm8,mmx
   integer,allocatable,dimension(:,:)::jj1,jj2,jj3
   integer,dimension(3,3)::ix=reshape((/(ik,ik=1,9)/),(/3,3/))
   integer,dimension(3,3),parameter::ixp=reshape((/(ik,ik=1,9)/),(/3,3/))
   integer,dimension(3,3)::ixvs=ixp((/2,3,1/),(/2,3,1/))
   integer::k1=1,k2=2,k3=3
   integer,allocatable,dimension(:)::vs
   allocate(jj1(3,3),jj2(3,3),jj3(3,3),vs(3));vs=(/k2,k3,k1/)
   mmx(1:6:2,1:6:2)=ix
   call w(&
     mm1(1:6:2,1:6:2),&
     mm2(1:6:2,1:6:2),&
     mm3(1:6:2,1:6:2),&
     mm4(1:6:2,1:6:2),&
     mm5(1:6:2,1:6:2),&
     mm6(1:6:2,1:6:2),&
     mm7(1:6:2,1:6:2),&
     mm8(1:6:2,1:6:2),&
     mmx(1:6:2,1:6:2) &
) 
contains
 subroutine w(ii1,ii3,jj1,jj2,jj3,jj4,jj5,jj6,ix)
   integer,dimension(:,:)::jj1,jj2,jj3,ii1,ii3,ix,jj4,jj5,jj6

   call ss(ii1,ix(:,:),i2=jj2(:,:),i3=jj3(:,:),pj=ix(:,:)+ix(:,:),pi1=jj4(:,:),pi2=jj5(:,:),pi3=jj6(:,:))
   if (any(ii1/=ix*1)) write(6,*) "NG"
   if (any(jj2/=ix*1+1)) write(6,*) "NG"
   if (any(jj3/=ix*1+2)) write(6,*) "NG"
   if (any(jj4/=ix*2+10)) write(6,*) "NG"
   if (any(jj5/=ix*2+11)) write(6,*) "NG"
   if (any(jj6/=ix*2+12)) write(6,*) "NG"
   call ss(ii1,ix(:,:)+ix(:,:),i2=jj2(:,:),i3=jj3(:,:),pj=ix(:,:)+ix(:,:),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(ii1/=ix*2)) write(6,*) "NG"
   if (any(jj2/=ix*2+1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ix*2+2)) write(6,*) "NG"
   if (any(jj4/=ix*2+10)) write(6,*) "NG"
   if (any(jj5/=ix*2+11)) write(6,*) "NG"
   if (any(jj6/=ix*2+12)) write(6,*) "NG"
   call ss(jj1,ix(:,:)+ix(:,:),i2=jj2(:,:),i3=jj3(:,:),pj=ix(vs,vs)+ix(vs,vs),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(jj1/=ix*2)) write(6,*) "NG"
   if (any(jj2/=ix*2+1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ix*2+2)) write(6,*) "NG"
   if (any(jj4/=ixvs*2+10)) write(6,*) "NG"
   if (any(jj5/=ixvs*2+11)) write(6,*) "NG"
   if (any(jj6/=ixvs*2+12)) write(6,*) "NG"
   call ss(pj=ix(:,:)+ix(:,:),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:),i3=ii3,j=ix(k1:k3,k1:k3),i2=jj2(:,:),i1=jj3(:,:))
   if (any(ii3/=ix*1+2)) write(6,*) "NG"
   if (any(jj2/=ix*1+2-1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ix*1+2-2)) write(6,*) "NG"
   call ss(i3=ii3,j=ix(k1:k3,k1:k3)+ix(k1:k3,k1:k3),i2=jj2(:,:),i1=jj3(:,:))
   if (any(ii3/=ix*2+2)) write(6,*) "NG"
   if (any(jj2/=ix*2+2-1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ix*2+2-2)) write(6,*) "NG"
   if (any(jj4/=ix*2+10)) write(6,*) "NG"
   if (any(jj5/=ix*2+11)) write(6,*) "NG"
   if (any(jj6/=ix*2+12)) write(6,*) "NG"
   call ss(i3=jj3(:,:),j=ix(:,:)+ix(:,:),i2=jj1(:,:),i1=jj2(:,:),pj=ix(:,:)+ix(:,:),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(jj3(:,:)/=ix*2+2)) write(6,*) "NG"
   if (any(jj1/=ix*2+2-1)) write(6,*) "NG"
   if (any(jj2/=ix*2+2-2)) write(6,*) "NG"
   if (any(jj4/=ix*2+10)) write(6,*) "NG"
   if (any(jj5/=ix*2+11)) write(6,*) "NG"
   if (any(jj6/=ix*2+12)) write(6,*) "NG"
   call ss(ii1,ix(vs,vs),i2=jj2(:,:),i3=jj3(:,:),pj=ix(:,:)+ix(:,:),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(ii1/=ixvs*1)) write(6,*) "NG"
   if (any(jj2/=ixvs*1+1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ixvs*1+2)) write(6,*) "NG"
   if (any(jj4/=ix*2+10)) write(6,*) "NG"
   if (any(jj5/=ix*2+11)) write(6,*) "NG"
   if (any(jj6/=ix*2+12)) write(6,*) "NG"
   call ss(ii1,ix(vs,vs),i2=jj2(:,:),i3=jj3(:,:),pj=ix(vs,vs)+ix(vs,vs),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(ii1/=ixvs*1)) write(6,*) "NG"
   if (any(jj2/=ixvs*1+1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ixvs*1+2)) write(6,*) "NG"
   if (any(jj4/=ixvs*2+10)) write(6,*) "NG"
   if (any(jj5/=ixvs*2+11)) write(6,*) "NG"
   if (any(jj6/=ixvs*2+12)) write(6,*) "NG"
   call ss(ii1,ix(vs,vs)+ix(vs,vs),i2=jj2(:,:),i3=jj3(:,:),pj=ix(vs,vs)+ix(vs,vs),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:))
   if (any(ii1/=ixvs*2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+1)) write(6,*) "NG"
   if (any(jj3(:,:)/=ixvs*2+2)) write(6,*) "NG"
   if (any(jj4/=ixvs*2+10)) write(6,*) "NG"
   if (any(jj5/=ixvs*2+11)) write(6,*) "NG"
   if (any(jj6/=ixvs*2+12)) write(6,*) "NG"
   call ss(pj=ix(vs,vs)+ix(vs,vs),pi1=jj4(:,:),pi2=jj5(:,:), pi3=jj6(:,:),i3=jj3(:,:),j=ix(vs,vs)+ix(vs,vs),i2=jj1(:,:),i1=jj2(:,:))
   if (any(jj3/=ixvs*2+2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+2-2)) write(6,*) "NG"
   if (any(jj1/=ixvs*2+2-1)) write(6,*) "NG"
   if (any(jj4/=ixvs*2+10)) write(6,*) "NG"
   if (any(jj5/=ixvs*2+11)) write(6,*) "NG"
   if (any(jj6/=ixvs*2+12)) write(6,*) "NG"
end subroutine
elemental subroutine ss(i1,j,i2,i3,pj,pi1,pi2,pi3)
   integer,intent(out),optional:: i1,i2,i3,pi1,pi2,pi3
   integer,intent(in),optional:: j,pj
   if (present(i1))i1=j
   if (present(i2))i2=j+1
   if (present(i3))i3=j+2
   if (present(pi1))pi1=pj+10
   if (present(pi2))pi2=pj+11
   if (present(pi3))pi3=pj+12
end subroutine
end
