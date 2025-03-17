module m1
type w
integer,pointer:: b(:,:,:)
end type
contains
subroutine sub(p1,p2)
type x
integer a(3,3,3)
end type
integer a(3,3,3)
type(x)::v
type(w)::p1
integer,pointer ::p2(:,:,:)
a=reshape((/(nn,nn=1,27)/),(/3,3,3/))
v%a=a
i=1;j=3;k=2;n=2
call s1(a(i:j,k,n))
call s1(v%a(i:j,k,n))
call s1(p2(i:j,k,n))
call s1(p1%b(i:j,k,n))
end subroutine
end
use m1
type(w)::p1
integer,pointer ::p2(:,:,:)
integer,target ::t2(9,9,9)
allocate(p2(3,3,3),p1%b(3,3,3))
p2=reshape((/(nn,nn=1,27)/),(/3,3,3/))
p1%b=p2
call sub(p1,p2)
t2(2:7:2,2:7:2,2:7:2)=p2
p2=>t2(2:7:2,2:7:2,2:7:2)
p1%b=>t2(2:7:2,2:7:2,2:7:2)
call sub(p1,p2)
print *,'pass'
end
subroutine s1(a)
integer a(3)
if (any(a/=(/13,14,15/)))write(6,*) "NG"
end
