 call s1
 print *,'pass'
 end
 module m1
 integer(8):: i1=1,i2=2,i3=3
 type t
 integer(8):: a(5,2,2)=reshape((/(j,j=1,10*2)/),(/5,2,2/))
 end type
 integer(8):: a(5,2,2)
end
 subroutine s1
 use m1
 call ss1
 contains
 subroutine ss1
 implicit integer(8)(a-z)
 type(t)::x
 a=x%a
 forall( j=a(1,1,1):a(2,1,1))
 forall (i=j+a(1,1,1)-j:-j+a(5,1,1)+j)
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
 forall( j=x%a(1,1,1):x%a(2,1,1))
 forall (i=j+x%a(1,1,1)-j:-j+x%a(5,1,1)+j)
   x%a(i,1,j)=-i
   x%a(i,2,j)=-i-5
 end forall
 end forall
 if (any(x%a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(x%a(:,:,2)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
!
end subroutine
end
