call s1
call s2
print *,'pass'
end
subroutine s1
type t1
integer::i
end type
type(t1),allocatable::ttt1
type(t1)::ttt2
ttt2%i=10
ttt1=ttt2
if(ttt1%i/=10) print *,'err'
end
subroutine s2
type t1
integer::i
end type
type(t1),allocatable::ttt1(:)
type(t1)::ttt2(1)
ttt2%i=[10]
ttt1=ttt2
if(any(ttt1%i/=[10])) print *,'err'
end
