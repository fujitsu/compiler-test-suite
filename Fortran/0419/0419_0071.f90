call s1
call s2
call s3
print *,'pass'
end
subroutine s1
type t
integer::i
end type
type(t),allocatable::ttt
allocate(ttt)
ttt%i=-10
if(ttt%i/=(-10)) print *,'err'
end
subroutine s2
type t
integer::i
end type
type(t),allocatable::ttt(:)
allocate(ttt(2))
ttt%i=-10
if(any(ttt%i/=[-10,-10])) print *,'err'
end
subroutine s3
type t1
integer::i
end type
type(t1),allocatable::ttt1(:)
type(t1)::ttt2
allocate(ttt1(1))
ttt2%i=10
ttt1=ttt2
if(any(ttt1%i/=[10])) print *,'err'
end
