 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 type t
 integer:: a(3,2,1,2)=reshape((/(j,j=1,12)/),(/3,2,1,2/))
 end type
 integer:: a(3,2,1,2)
end
 subroutine s1
 use m1
 do j=1,3
 call ss1
 end do
 contains
 subroutine ss1
 type(t)::x
 a=x%a
 forall (i=a(1,1,1,1):a(3,1,1,1),ii=a(1,1,1,1):a(2,1,1,1),&
   iii=a(1,1,1,1):a(1,1,1,1))
   a(i,ii,iii,1)=-i
   a(i,ii,iii,2)=-i-3
 end forall
 if (any(a(:,1,1,:)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(a(:,2,1,:)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
!
 forall (i=x%a(1,1,1,1):x%a(3,1,1,1),ii=x%a(1,1,1,1):x%a(2,1,1,1),&
   iii=x%a(1,1,1,1):x%a(1,1,1,1))
   x%a(i,ii,iii,1)=-i
   x%a(i,ii,iii,2)=-i-3
 end forall
 if (any(x%a(:,1,1,:)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(x%a(:,2,1,:)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
end subroutine
end
