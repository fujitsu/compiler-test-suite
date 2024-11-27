 call s1
 print *,'pass'
 end
 module m1
 integer(8):: i1=1,i2=2,i3=3
 type t
 integer(8):: a(5,2)=reshape((/(j,j=1,10)/),(/5,2/))
 end type
 integer(8):: a(5,2)
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
 subroutine ss1
 type(t)::x
 a=x%a
 forall (i=a(1,1):a(5,1))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=x%a(i3-i2,1):x%a(5,1))
   x%a(i,1)=-i
   x%a(i,2)=-i-5
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss2
 type(t)::x
 a=x%a
 forall (i=i3-i2:a(5,1))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=i3-i2:x%a(5,1))
   x%a(i,1)=-i
   x%a(i,2)=-i-5
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss3
 type(t)::x
 a=x%a
 forall (i=i3-i2:i3+i2:a(i1,1))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=i3-i2:i3+i2:x%a(i1,1))
   x%a(i,1)=-i
   x%a(i,2)=-i-5
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
 subroutine ss4
 type(t)::x
 a=x%a
 forall (i=a(i3-i2,i1):a(5,1):a(i1,i1))
   a(i,1)=-i
   a(i,2)=-i-5
 end forall
 if (any(a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall (i=x%a(i3-i2,i1):x%a(5,1):x%a(i1,i1))
   x%a(i,1)=-i
   x%a(i,2)=-i-5
 end forall
 if (any(x%a/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
end subroutine
end
