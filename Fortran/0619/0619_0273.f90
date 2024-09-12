recursive subroutine s1
type z
   integer,allocatable::zz(:)
end type
type w
   type(z),allocatable::ww(:)
end type
type(w),allocatable::a1(:),a2(:)
character(100)::x
k=100
allocate(a1(2),a2(3),stat=k)
if (k/=0)print *,100
if (any(ubound(a1)/=2))print *,101
if (any(ubound(a2)/=3))print *,102
if (allocated(a1(1)%ww))print *,103
if (allocated(a1(2)%ww))print *,104
if (allocated(a2(1)%ww))print *,105
if (allocated(a2(2)%ww))print *,106
if (allocated(a2(3)%ww))print *,107
allocate(a1(1)%ww(4),a1(2)%ww(5),stat=k)
if (k/=0)print *,200
if (any(ubound(a1(1)%ww)/=4))print *,201
if (any(ubound(a1(2)%ww)/=5))print *,202
do n2=1,4
if (allocated(a1(1)%ww(n2)%zz))print *,203
end do
do n2=1,5
if (allocated(a1(2)%ww(n2)%zz))print *,204
end do
allocate(a2(1)%ww(4),a2(2)%ww(5),a2(3)%ww(6),stat=k)
if (k/=0)print *,300
if (any(ubound(a2(1)%ww)/=4))print *,301
if (any(ubound(a2(2)%ww)/=5))print *,302
if (any(ubound(a2(3)%ww)/=6))print *,303
do n2=1,4
if (allocated(a2(1)%ww(n2)%zz))print *,213
end do
do n2=1,5
if (allocated(a2(2)%ww(n2)%zz))print *,214
end do
do n2=1,6
if (allocated(a2(3)%ww(n2)%zz))print *,215
end do
deallocate(a1)
k=100
allocate(a1(1),a2(2),stat=k)
if (k==0)print *,1100
if (any(ubound(a1)/=1))print *,1101
if (any(ubound(a2)/=3))print *,1102
if (allocated(a1(1)%ww))print *,1103
if (.not.allocated(a2(1)%ww))print *,1105
if (.not.allocated(a2(2)%ww))print *,1106
if (.not.allocated(a2(3)%ww))print *,1107
allocate(a1(1)%ww(5),stat=k)
if (k/=0)print *,1200
if (any(ubound(a1(1)%ww)/=5))print *,1201
do n2=1,4
if (allocated(a2(1)%ww(n2)%zz))print *,213
end do
do n2=1,5
if (allocated(a2(2)%ww(n2)%zz))print *,214
end do
do n2=1,6
if (allocated(a2(3)%ww(n2)%zz))print *,215
end do
end
call s1
call s1
call s1
print *,'pass'
end
