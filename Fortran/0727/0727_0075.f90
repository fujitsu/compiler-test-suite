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
 subroutine ss1
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
end subroutine
end
