type tt
integer,allocatable::i
end type
class(tt),allocatable::ttt
class(*),allocatable::yyy
allocate(ttt)
allocate(yyy,source=ttt)
allocate(ttt%i)
ttt%i=1
yyy=ttt
yyy=ttt%i
print *,'pass'
end


