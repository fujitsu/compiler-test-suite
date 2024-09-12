subroutine s1
type a
   integer,allocatable::aa(:)
end type
type(a),allocatable::in(:)
type(a),allocatable::to(:)
allocate(to(5))
allocate(in(3))
do i=1,3
 allocate(in(i)%aa(2))
 in(i)%aa=(/i,i+1/)
end do
do i=1,5
 allocate(to(i)%aa(3))
 to(i)%aa=(/i,i+1,i+2/)
end do
 if (ubound(to,1)/=5)print *,1
 if (ubound(in,1)/=3)print *,2
call move_alloc(in,to)
 if (ubound(to,1)/=3)print *,5
 if (allocated(in))print *,6
do i=1,3
  if (to(i)%aa(1)/=i)print *,4,i
  if (to(i)%aa(2)/=i+1)print *,8,i
end do
end
call s1
print *,'pass'
end
