 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 type t
 integer:: a(5,2,2)=reshape((/(j,j=1,10*2)/),(/5,2,2/))
 end type
 integer:: a(5,2,2)
end
 subroutine s1
 use m1
 call ss1
 contains
  elemental function p(i)
  intent (in)::i
  integer ::p
  p=i
 end function
 subroutine ss1
 type(t)::x
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=p(j)+p(a(1,1,1))-p(j):p(-j)+p(a(5,1,1))+p(j),p(a(1,1,1)) > 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=p(j+a(1,1,1)-j):p(-j+a(5,1,1)+j),p(-a(1,1,1)) < 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=p(j+a(1,1,1))-p(j):p(-j+a(5,1,1)+j),j+p(i-a(1,1,1)-j)-i < 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
end subroutine
end
