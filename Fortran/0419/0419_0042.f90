call s1
call s1
print *,'pass'
end
subroutine s1
type t1
integer,allocatable::i
end type
type(t1),allocatable::ttt1
type(t1)::ttt2
allocate(ttt1)
ttt2%i=-1
ttt1=ttt2
if(ttt1%i/=(-1)) print *,'err'
end
subroutine s2
type t1
integer,allocatable::i
end type
type(t1),allocatable::ttt1(:)
type(t1)::ttt2(2)
allocate(ttt1(2))
ttt2(1)%i=-1
ttt2(2)%i=-2
ttt1=ttt2
if(ttt1(1)%i/=(-1)) print *,'err'
if(ttt1(2)%i/=(-2)) print *,'err'
end
