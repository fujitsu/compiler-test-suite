 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 integer:: ma(5,2,2,5:5,5:5)=reshape((/(j,j=1,10*2)/),(/5,2,2,1,1/))
 type t
 integer:: a(5,2,2,5:5,5:5)=reshape((/(j,j=1,10*2)/),(/5,2,2,1,1/))
 end type
 integer,dimension(5,2,2,5:5,5:5)::a,w=reshape((/(j,j=1,10*2)/),(/5,2,2,1,1/))
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
 type(t)::x,wx
 logical,dimension(5,2,2,5:5,5:5)::aa
 type tt
   logical:: aa(5,2,2,5:5,5:5)
 end type
 type(tt)::z,wz
 aa=.false.;z%aa=.false.
!
 wx%a=ma;wz%aa=.true.
 x%a=ma; a=x%a; aa=.true.; z%aa=.true.
 forall (jx=5:5);forall(jy=jx:5);forall(jz=jx:jy)
 forall( j=1:2)
 forall (i=1:jx+w(5,1,1,jy,5)-jz-a(5,1,1,5,5)+a(5,1,1,5,5))
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
