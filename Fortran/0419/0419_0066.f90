type t
integer,allocatable::i(:)
end type
type(t)::ttt
allocate(ttt%i(1))
ttt%i(1)=1
if(ttt%i(1)/=1) print *,'err'
print *,'pass'
end
