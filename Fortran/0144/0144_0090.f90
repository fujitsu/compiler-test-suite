module m1
integer,parameter:: k2=3
contains
subroutine s1(b1)
character(:),pointer:: b1
forall (n=2:2)
  b1=b1//'1'
end forall
end subroutine
subroutine s2(b2)
character(:),pointer:: b2
character(:),pointer:: w
allocate( character(2):: w)
do      n=2,2
  w=b2//'1'
end do
do      n=2,2
  b2=w
end do
end subroutine
end
use m1
character(:),pointer:: b1,b2
allocate( character(2):: b1 )
allocate( character(2):: b2 )
i=ichar('a')
b1=char(i)//char(i)
b2=char(i)//char(i)
i=i+1
call s1(b1)
call s2(b2)
if (   (b1/= b2))print *,101
print *,'pass'
end
