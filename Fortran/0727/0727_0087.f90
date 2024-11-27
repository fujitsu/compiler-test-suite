 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 integer:: ma(5,2,2,5:5,5:5)=reshape((/(j,j=1,10*2)/),(/5,2,2,1,1/))
 type t
 integer:: a(5,2,2,5:5,5:5)=reshape((/(j,j=1,10*2)/),(/5,2,2,1,1/))
 end type
 integer:: a(5,2,2,5:5,5:5)
 contains
  elemental function if(j)
   intent(in)::j
   if = j
  end function
end
 subroutine s1
 use m1
 call ss1
 contains
 subroutine ss1
 type(t)::x
 logical:: aa(5,2,2,5:5,5:5)
 type tt
   logical:: aa(5,2,2,5:5,5:5)
 end type
 type(tt)::z
 aa=.false.;z%aa=.false.
!
 x%a=ma; a=x%a; aa=.true.; z%aa=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=1:jx+a(5,1,1,5,5)-jz)
   a(i,1,j,jx,jz)=-i; a(i,2,j,jx,jz)=-i-5
   x%a(i,1,j,jx,jz)=-i; x%a(i,2,j,jx,jz)=-i-5
   aa(i,1,j,jx,jz)=.false.; aa(i,2,j,jx,jz)=.false.
   z%aa(i,1,j,jx,jz)=.false.; z%aa(i,2,j,jx,jz)=.false.
 end forall
 end forall
 end forall;end forall;end forall
 if (any(a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(aa))write(6,*) "NG"
 if (any(z%aa))write(6,*) "NG"
!
 x%a=ma; a=x%a; aa(1,1,:,5,5)=.true.; z%aa(1,1,:,5,5)=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=jz+a(1,1,1,5,5)-jx:5)
   a(i,1,j,jx,jz)=-i; a(i,2,j,jx,jz)=-i-5
   x%a(i,1,j,jx,jz)=-i; x%a(i,2,j,jx,jz)=-i-5
   aa(i,1,j,jx,jz)=.false.; aa(i,2,j,jx,jz)=.false.
   z%aa(i,1,j,jx,jz)=.false.; z%aa(i,2,j,jx,jz)=.false.
 end forall
 end forall
 end forall;end forall;end forall
 if (any(a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(aa))write(6,*) "NG"
 if (any(z%aa))write(6,*) "NG"
!
 x%a=ma; a=x%a; aa(1,1,:,5,5)=.true.; z%aa(1,1,:,5,5)=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=1:5:jx-jz+a(1,1,1,5,5))
   a(i,1,j,jx,jz)=-i; a(i,2,j,jx,jz)=-i-5
   x%a(i,1,j,jx,jz)=-i; x%a(i,2,j,jx,jz)=-i-5
   aa(i,1,j,jx,jz)=.false.; aa(i,2,j,jx,jz)=.false.
   z%aa(i,1,j,jx,jz)=.false.; z%aa(i,2,j,jx,jz)=.false.
 end forall
 end forall
 end forall;end forall;end forall
 if (any(a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(aa))write(6,*) "NG"
 if (any(z%aa))write(6,*) "NG"
!
 x%a=ma; a=x%a; aa(1,1,:,5,5)=.true.; z%aa(1,1,:,5,5)=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=1:5,jx==jz.and.aa(1,1,1,5,5))
   a(i,1,j,jx,jz)=-i; a(i,2,j,jx,jz)=-i-5
   x%a(i,1,j,jx,jz)=-i; x%a(i,2,j,jx,jz)=-i-5
   aa(i,1,j,jx,jz)=.false.; aa(i,2,j,jx,jz)=.false.
   z%aa(i,1,j,jx,jz)=.false.; z%aa(i,2,j,jx,jz)=.false.
 end forall
 end forall
 end forall;end forall;end forall
 if (any(a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(aa))write(6,*) "NG"
 if (any(z%aa))write(6,*) "NG"
!
 x%a=ma; a=x%a; aa(1,1,:,5,5)=.true.; z%aa(1,1,:,5,5)=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=jx-jz+a(1,1,1,5,5):a(5,1,1,5,5)-jx+jz:-jx+jy+a(1,1,1,5,5),aa(1,1,1,5,5).and.jx==jy)
   a(i,1,j,jx,jz)=-i; a(i,2,j,jx,jz)=-i-5
   x%a(i,1,j,jx,jz)=-i; x%a(i,2,j,jx,jz)=-i-5
   aa(i,1,j,jx,jz)=.false.; aa(i,2,j,jx,jz)=.false.
   z%aa(i,1,j,jx,jz)=.false.; z%aa(i,2,j,jx,jz)=.false.
 end forall
 end forall
 end forall;end forall;end forall
 if (any(a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,1,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(x%a(:,:,2,:,:)/=reshape((/(-j,j=1,10)/),(/5,2,1,1/))))write(6,*) "NG"
 if (any(aa))write(6,*) "NG"
 if (any(z%aa))write(6,*) "NG"
end subroutine
end
