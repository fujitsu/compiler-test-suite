class(*),allocatable::a(:)
character(3)::cc="123"
a=[(cc(:2),i=1,2),("abc"(:2),i=1,2)]
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err',len(a)
if(a(1)//"z"/="12z") print *,'err1',a(1)//"z"
if(a(2)//"z"/="12z") print *,'err2',a(1)//"z"
if(a(3)//"z"/="abz") print *,'err3',a(2)//"z"
if(a(4)//"z"/="abz") print *,'err4',a(2)//"z"
if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
end select
print *,'pass'
end
