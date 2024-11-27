 call s1
 print *,'pass'
 end
 module m1
 integer:: i1=1,i2=2,i3=3
 type t
 integer:: a(3,2,1,2,2)=reshape((/(j,j=1,12*2)/),(/3,2,1,2,2/))
 end type
 integer:: a(3,2,1,2,2)
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
 forall (j=a(1,1,1,1,1):a(2,1,1,1,1))
 forall (i=j+a(1,1,1,1,1)-j:j+a(3,1,1,1,1)-j,&
   ii=j+a(1,1,1,1,1)-j:j+a(2,1,1,1,1)-j,&
   iii=j+a(1,1,1,1,1)-j:-j+a(1,1,1,1,1)+j)
   a(i,ii,iii,1,j)=-i
   a(i,ii,iii,2,j)=-i-3
 end forall
 end forall
 if (any(a(:,1,1,:,1)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(a(:,2,1,:,1)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(a(:,1,1,:,2)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(a(:,2,1,:,2)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
!
 forall (j=x%a(1,1,1,1,1):x%a(2,1,1,1,1))
 forall (i=j+x%a(1,1,1,1,1)-j:j+x%a(3,1,1,1,1)-j,&
   ii=j+x%a(1,1,1,1,1)-j:-j+x%a(2,1,1,1,1)+j,&
   iii=j+x%a(1,1,1,1,1)-j:-j+x%a(1,1,1,1,1)+j)
   x%a(i,ii,iii,1,j)=-i
   x%a(i,ii,iii,2,j)=-i-3
 end forall
 end forall
 if (any(x%a(:,1,1,:,1)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(x%a(:,2,1,:,1)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(x%a(:,1,1,:,2)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
 if (any(x%a(:,2,1,:,2)/=reshape((/(-j,j=1,6)/),(/3,2/))))write(6,*) "NG"
end subroutine
end
