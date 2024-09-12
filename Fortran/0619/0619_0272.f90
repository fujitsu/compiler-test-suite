subroutine s1
type w
   integer,allocatable::ww(:)
end type
type(w),allocatable::a1(:),a2(:)
character(100)::x
k=100
allocate(a1(2),a2(3),stat=k)
end
call s1
print *,'pass'
end
