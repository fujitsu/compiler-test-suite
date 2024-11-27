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
  elemental function pp(i,j)
  intent (in)::i,j
  integer ::pp
  pp=i+j
 end function
 subroutine ss1
 type(t)::x
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=pp(j,a(1,1,1))-p(j):pp(p(-j),pp(a(5,1,1),j)),p(a(1,1,1)) > 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=pp(j,a(1,1,1)-j):pp(-j+a(5,1,1),j),p(-a(1,1,1)) < 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 a=x%a
 forall( j=p(a(1,1,1)):p(a(2,1,1)))
 forall (i=pp(j,a(1,1,1))-p(j):pp(pp(-j,a(5,1,1)),j),pp(j,pp(0,i-a(1,1,1)-j)-i )< 0)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
end subroutine
end
