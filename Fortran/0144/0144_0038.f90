module m1
integer,parameter:: k2=3
character(:),pointer:: b1(:,:)
contains
subroutine s1()
forall (n=2:2)
  b1=b1//'1'
end forall
end subroutine
end
use m1
allocate( character(2):: b1(3,3) )
i=ichar('a')
do n2=1,k2
do n3=1,3
b1(n2,n3)=char(i+n3+n2)
i=i+1
end do
end do
call s1()
print *,'pass'
end
