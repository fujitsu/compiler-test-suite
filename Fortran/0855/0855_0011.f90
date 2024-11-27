type t
class(*),allocatable::aaa(:)
end type
character(:),allocatable::bbb(:)
character(:),allocatable::ddd(:)
type(t)::ccc
ddd=s(bbb)
if(len(ddd)/=1) print *,'err'
print *,'pass'
contains
character(1) function s(bbb) result(ddd)
character(:),allocatable::bbb(:)
dimension::ddd(1)
allocate(character(0)::bbb(1))
allocate(ccc%aaa(1),source="a")
select type(ccc=>ccc%aaa)
type is(character(*))
bbb=ccc
ddd=bbb
end select

end
end
