subroutine s1(k)
do kk=1,k
block
integer,pointer:: a(:),b(:)
character(k),allocatable::  aa(:),bb(:)
allocate(a(3),b(3),aa(3),bb(3))
a=1
b=2
aa='12'
bb='34'
block
  if (aa(3)/='12') print *,101
  if (bb(3)/='34') print *,102
  if (a(3)/=1) print *,201
  if (b(3)/=2) print *,202
end block
end block
end do
end
call s1(3)
print *,'pass'
end

