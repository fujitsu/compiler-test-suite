subroutine s1
type a
   integer,allocatable::aa(:)
end type
type b
  type(a),allocatable::bb(:)
end type
type(a),allocatable::in(:)
type(b),allocatable::to(:)
allocate(to(2))
allocate(in(3),to(2)%bb(5))
do i=1,5
 allocate(to(2)%bb(i)%aa(3))
 do k=1,3
   to(2)%bb(i)%aa(k)=k
 end do
end do
do i=1,3
 allocate(in(i)%aa(2))
 in(i)%aa=(/i,i+1/)
end do
 if (ubound(to(2)%bb,1)/=5)print *,1
 if (ubound(in,1)/=3)print *,2
call move_alloc(in,to(2)%bb)
 if (ubound(to(2)%bb,1)/=3)print *,5
 if (allocated(in))print *,6
do i=1,3
  if (to(2)%bb(i)%aa(1)/=i)print *,4,i
  if (to(2)%bb(i)%aa(2)/=i+1)print *,6,i
end do
end
call s1
print *,'pass'
end
