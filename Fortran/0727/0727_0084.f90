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
 logical:: aa(5,2,2)
 type tt
   logical:: aa(5,2,2)
 end type
 type(tt)::z
 a=x%a
 aa=x%a==1
 z%aa=x%a==1
 forall( j=1:2)
 forall (i=1:5,z%aa(1,1,j))
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/( j,j=11,20)/),(/5,2/))))write(6,*) "NG"
!
 a=x%a
 forall( j=1:2)
 forall (i=1:5,aa(1,1,j))
   a(i,1,j)=-i
   a(i,2,j)=-i-5
 end forall
 end forall
 if (any(a(:,:,1)/=reshape((/(-j,j=1,10)/),(/5,2/))))write(6,*) "NG"
 if (any(a(:,:,2)/=reshape((/( j,j=11,20)/),(/5,2/))))write(6,*) "NG"
end subroutine
end