type z
  character(2),allocatable,dimension(:)::p
end type
type (z) a,b
 allocate(a%p(5))
 allocate(b%p(2))
 a%p='Z'
 b%p=(/'ab','ba'/)
 a=b
 b%p=(/'AB','BA'/)
 if (size(a%p)/=2) write(6,*) "NG"
 if (any(a%p/=(/'ab','ba'/))) write(6,*) "NG"
 if (any(b%p/=(/'AB','BA'/))) write(6,*) "NG"
 print *,'pass'
end
