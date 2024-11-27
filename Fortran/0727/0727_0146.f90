 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 type t
 integer:: a(5,2)=reshape((/(j,j=1,10)/),(/5,2/))
 end type
 integer:: a(5,2)
end
 subroutine s1
 use m1
 do j=1,3
 call ss1
 call ss2
 call ss3
 call ss4
 end do
 contains
 elemental function p(k)
 intent(in)::k
 integer   ::p
 p=k
 end function
 subroutine ss1
 type(t)::x
 a=x%a
 forall (i=p(a(1,1)):p(a(5,1)))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=p(x%a(i3-i2,1)):p(x%a(5,1)))
   x%a(i,1)=p(-i)
   x%a(i,2)=p(-i-5)
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss2
 type(t)::x
 a=x%a
 forall (i=p(i3-i2):p(a(5,1)))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=p(i3-i2):p(x%a(5,1)))
   x%a(i,1)=-i
   x%a(i,2)=p(-i-5)
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss3
 type(t)::x
 a=x%a
 forall (i=p(i3)-i2:p(i3+i2):p(a(i1,1)))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=p(i3-i2):(i3+i2):p(x%a(i1,1)))
   x%a(i,1)=-i
   x%a(i,2)=p(-i-5)
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss4
 type(t)::x
 a=x%a
 forall (i=p(a(i3-i2,i1)):p(a(5,1)):p(a(i1,i1)))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=p(x%a(i3-i2,i1)):p(x%a(5,1)):p(x%a(i1,i1)))
   x%a(i,1)=-i
   x%a(i,2)=-i-5
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
end
