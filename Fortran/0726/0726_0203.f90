 call s1
 print *,'pass'
 end
 subroutine s1
   integer,dimension(3,3)::ii1,ii3
   integer,allocatable,dimension(:,:)::jj1,jj2,jj3
   integer,dimension(3,3)::ix=reshape((/(ik,ik=1,9)/),(/3,3/))
   integer,dimension(3,3),parameter::ixp=reshape((/(ik,ik=1,9)/),(/3,3/))
   integer,dimension(3,3)::ixvs=ixp((/2,3,1/),(/2,3,1/))
   integer::k1=1,k2=2,k3=3
   integer,allocatable,dimension(:)::vs
   allocate(jj1(3,3),jj2(3,3),jj3(3,3),vs(3));vs=(/k2,k3,k1/)
   call ss(ii1,ix(:,:),i2=jj2)
   if (any(ii1/=ix)) write(6,*) "NG"
   if (any(jj2/=ix+1)) write(6,*) "NG"
   call ss(jj1,ix(:,:),i2=jj2)
   if (any(jj1/=ix)) write(6,*) "NG"
   if (any(jj2/=ix+1)) write(6,*) "NG"
   call ss(i3=ii3,j=ix(k1:k3,k1:k3),i2=jj2)
   if (any(ii3/=ix+2)) write(6,*) "NG"
   if (any(jj2/=ix+2-1)) write(6,*) "NG"
   call ss(i3=jj3,j=ix(:,:),i2=jj2)
   if (any(jj3/=ix+2)) write(6,*) "NG"
   if (any(jj2/=ix+2-1)) write(6,*) "NG"
   call ss(ii1,ix(vs,vs),i2=jj2)
   if (any(ii1/=ixvs)) write(6,*) "NG"
   if (any(jj2/=ixvs+1)) write(6,*) "NG"
   call ss(jj1,ix(vs,vs),i2=jj2)
   if (any(jj1/=ixvs)) write(6,*) "NG"
   if (any(jj2/=ixvs+1)) write(6,*) "NG"
   call ss(i3=ii3,j=ix(vs,vs),i2=jj2)
   if (any(ii3/=ixvs+2)) write(6,*) "NG"
   if (any(jj2/=ixvs+2-1)) write(6,*) "NG"
   call ss(i3=jj3,j=ix(vs,vs),i2=jj2)
   if (any(jj3/=ixvs+2)) write(6,*) "NG"
   if (any(jj2/=ixvs+2-1)) write(6,*) "NG"
   call ss(ii1,ix(:,:)+ix(:,:),i2=jj2)
   if (any(ii1/=ix*2)) write(6,*) "NG"
   if (any(jj2/=ix*2+1)) write(6,*) "NG"
   call ss(jj1,ix(:,:)+ix(:,:),i2=jj2)
   if (any(jj1/=ix*2)) write(6,*) "NG"
   if (any(jj2/=ix*2+1)) write(6,*) "NG"
   call ss(i3=ii3,j=ix(k1:k3,k1:k3)+ix(k1:k3,k1:k3),i2=jj2)
   if (any(ii3/=ix*2+2)) write(6,*) "NG"
   if (any(jj2/=ix*2+2-1)) write(6,*) "NG"
   call ss(i3=jj3,j=ix(:,:)+ix(:,:),i2=jj2)
   if (any(jj3/=ix*2+2)) write(6,*) "NG"
   if (any(jj2/=ix*2+2-1)) write(6,*) "NG"
   call ss(ii1,ix(vs,vs)+ix(vs,vs),i2=jj2)
   if (any(ii1/=ixvs*2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+1)) write(6,*) "NG"
   call ss(jj1,ix(vs,vs)+ix(vs,vs),i2=jj2)
   if (any(jj1/=ixvs*2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+1)) write(6,*) "NG"
   call ss(i3=ii3,j=ix(vs,vs)+ix(vs,vs),i2=jj2)
   if (any(ii3/=ixvs*2+2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+2-1)) write(6,*) "NG"
   call ss(i3=jj3,j=ix(vs,vs)+ix(vs,vs),i2=jj2)
   if (any(jj3/=ixvs*2+2)) write(6,*) "NG"
   if (any(jj2/=ixvs*2+2-1)) write(6,*) "NG"
 contains
elemental subroutine ss(i1,j,i2,i3)
   integer,intent(out),optional:: i1,i2,i3
   integer,intent(in):: j
   if (present(i1))i1=j
   if (present(i2))i2=j+1
   if (present(i3))i3=j+2
end subroutine
end
