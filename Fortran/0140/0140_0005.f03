call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(8)::i,j
type t
integer(8)::i1(10000)
end type
type(t)::ttt
ttt%i1=[(j,j=1_8,10000_8)]
forall(i=1_8:10000_8) ttt%i1(ttt%i1) = ttt%i1(1_8:10000_8)**1_8
if(sum(ttt%i1)/=50005000) print *,'err'
end
subroutine s2
integer(8)::i,k,m,j
type t
integer(8)::i1(10000)
end type
type(t)::ttt
ttt%i1=[(j,j=1_8,10000_8)]
m=1_8
k=10000_8
forall(i=m:k) ttt%i1(ttt%i1) = ttt%i1(m:k)**m
if(sum(ttt%i1)/=50005000) print *,'err'
end
subroutine s3
type t
integer::i1(10000)
end type
type(t)::ttt
ttt%i1=[(j,j=1,10000)]
forall(i=1:10000) ttt%i1(ttt%i1) = ttt%i1(1:10000)**1
if(sum(ttt%i1)/=50005000) print *,'err'
end
subroutine s4
type t
integer::i1(10000)
end type
type(t)::ttt
ttt%i1=[(j,j=1,10000)]
k=10000
forall(i=1:k) ttt%i1(ttt%i1) = ttt%i1(1:k)**1
if(sum(ttt%i1)/=50005000) print *,'err'
end
