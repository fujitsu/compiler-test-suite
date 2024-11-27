 call s1
 print *,'pass'
 end
 subroutine s1
   integer,dimension(6,6)::mm1,mm2,mm3,mm4,mm5,mm6,mm7,mm8,mmx
   integer,allocatable,dimension(:,:)::jj1,jj2,jj3
   integer,dimension(3,3)::ix=reshape((/(ik,ik=1,9)/),(/3,3/))
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

   call ss(ii1(k2+k1,k2+k1),ix(k2+1,k1+2),i2=jj2(k2+1,k1+2),i3=jj3(k2+1,k1+2),pj=ix(k2+1,k1+2)+ix(k2+1,k1+2),pi1=jj4(k2+1,k1+2),pi2=jj5(k2+1,k1+2),pi3=jj6(k2+1,k1+2))
   if ((ii1(3,3)/=ix(3,3)*1)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*1+1)) write(6,*) "NG"
   if ((jj3(3,3)/=ix(3,3)*1+2)) write(6,*) "NG"
   if ((jj4(3,3)/=ix(3,3)*2+10)) write(6,*) "NG"
   if ((jj5(3,3)/=ix(3,3)*2+11)) write(6,*) "NG"
   if ((jj6(3,3)/=ix(3,3)*2+12)) write(6,*) "NG"
   call ss(ii1(k2+1,k1+2),ix(k2+1,k1+2)+ix(k2+1,k1+2),i2=jj2(k2+1,k1+2),i3=jj3(k2+1,k1+2),pj=ix(k2+1,k1+2)+ix(k2+1,k1+2),pi1=jj4(k2+1,k1+2),pi2=jj5(k2+1,k1+2), pi3=jj6(k2+1,k1+2))
   if ((ii1(3,3)/=ix(3,3)*2)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*2+1)) write(6,*) "NG"
   if ((jj3(k2+1,k1+2)/=ix(3,3)*2+2)) write(6,*) "NG"
   if ((jj4(3,3)/=ix(3,3)*2+10)) write(6,*) "NG"
   if ((jj5(3,3)/=ix(3,3)*2+11)) write(6,*) "NG"
   if ((jj6(3,3)/=ix(3,3)*2+12)) write(6,*) "NG"
   call ss(jj1(k2+1,k1+k2),ix(k2+1,k1+2)+ix(k2+1,k1+2),i2=jj2(k2+1,k1+2),i3=jj3(k2+1,k1+2),pj=ix(k2+k1,k2+k1)+ix(k2+k1,k2+k1),pi1=jj4(k2+1,k1+2),pi2=jj5(k2+1,k1+2), pi3=jj6(k2+1,k1+2))
   if ((jj1(3,3)/=ix(3,3)*2)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*2+1)) write(6,*) "NG"
   if ((jj3(k2+1,k1+2)/=ix(3,3)*2+2)) write(6,*) "NG"
   if ((jj4(3,3)/=ix(k2+k1,3)*2+10)) write(6,*) "NG"
   if ((jj5(3,3)/=ix(k2+k1,3)*2+11)) write(6,*) "NG"
   if ((jj6(3,3)/=ix(k2+k1,3)*2+12)) write(6,*) "NG"
   call ss(pj=ix(k2+1,k1+2)+ix(k2+1,k1+2),pi1=jj4(k2+1,k1+2),pi2=jj5(k2+1,k1+2), pi3=jj6(k2+1,k1+2),i3=ii3(k2+1,k1+2),j=ix(k2+k1,k2+k1),i2=jj2(k2+1,k1+2),i1=jj3(k2+1,k1+2))
   if ((ii3(3,3)/=ix(3,3)*1+2)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*1+2-1)) write(6,*) "NG"
   if ((jj3(k2+1,k1+2)/=ix(3,3)*1+2-2)) write(6,*) "NG"
   call ss(i3=ii3(3,3),j=ix(k2+k1,k2+k1)+ix(k2+k1,k2+k1),i2=jj2(k2+1,k1+2),i1=jj3(k2+1,k1+2))
   if ((ii3(3,3)/=ix(3,3)*2+2)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*2+2-1)) write(6,*) "NG"
   if ((jj3(k2+1,k1+2)/=ix(3,3)*2+2-2)) write(6,*) "NG"
   if ((jj4(3,3)/=ix(3,3)*2+10)) write(6,*) "NG"
   if ((jj5(3,3)/=ix(3,3)*2+11)) write(6,*) "NG"
   if ((jj6(3,3)/=ix(3,3)*2+12)) write(6,*) "NG"
   call ss(i3=jj3(k2+1,k1+2),j=ix(k2+1,k1+2)+ix(k2+1,k1+2),i2=jj1(k2+1,k1+2),i1=jj2(k2+1,k1+2),pj=ix(k2+1,k1+2)+ix(k2+1,k1+2),pi1=jj4(k2+1,k1+2),pi2=jj5(k2+1,k1+2), pi3=jj6(k2+1,k1+2))
   if ((jj3(k2+1,k1+2)/=ix(3,3)*2+2)) write(6,*) "NG"
   if ((jj1(3,3)/=ix(3,3)*2+2-1)) write(6,*) "NG"
   if ((jj2(3,3)/=ix(3,3)*2+2-2)) write(6,*) "NG"
   if ((jj4(3,3)/=ix(3,3)*2+10)) write(6,*) "NG"
   if ((jj5(3,3)/=ix(3,3)*2+11)) write(6,*) "NG"
   if ((jj6(3,3)/=ix(3,3)*2+12)) write(6,*) "NG"
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
