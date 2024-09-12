character(:),pointer::aaa(:)
allocate(aaa,source=["abc","def"])
call s(aaa)
print *,'pass'
contains
subroutine s(aaa)
class(*),target::aaa(:)
class(*),allocatable::bbb(:)
select type(aaa)
type is(character(*))
if(len(aaa)/=3) print *,'err1'
if(any(aaa/=["abc","def"])) print *,'err11'
bbb=aaa(1:2)(2:3)
select type(bbb)
type is(character(*))
if(len(bbb)/=2) print *,'err2',bbb,len(bbb)
if(any(bbb/=["bc","ef"])) print *,'err22'
end select
class default
print *,'NG'
end select
end subroutine s
end
