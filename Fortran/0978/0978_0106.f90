type x
  integer,pointer::p
end type
integer,target::t
type(x)::z
z%p=>t
z%p=1
if(t/=1)write(6,*) "NG"
print *,'pass'
end

