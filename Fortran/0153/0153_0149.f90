subroutine s1
type x
  integer:: x1
end type
type(x),allocatable:: v1(:,:)
type(x),pointer    :: v2(:,:)
type(x),target     :: t3(4,6)
type(x),pointer    :: v3(:,:)
allocate(v1(2,3),v2(2,3))
v1=reshape([(x(k),k=1,6)],[2,3])
v2=reshape([(x(k),k=11,16)],[2,3])
t3(::2,::2)%x1=v2%x1+10
v3=>t3(::2,::2)
write(1,*) v1
write(1,*) v2
write(1,*) v3
call chk
end
subroutine chk
integer:: z(6)
rewind 1
read(1,*) z
if (any(z/=([1,2,3,4,5,6]+00))) print *,101
read(1,*) z
if (any(z/=([1,2,3,4,5,6]+10))) print *,102
read(1,*) z
if (any(z/=([1,2,3,4,5,6]+20))) print *,103
end
call s1
print *,'pass'
end
