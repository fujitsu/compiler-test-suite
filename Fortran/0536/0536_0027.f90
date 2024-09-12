character(:),allocatable::aaa
allocate(aaa,source="abc")
call s(aaa)
print *,'pass'
contains
subroutine s(aaa)
class(*)::aaa
class(*),allocatable::bbb
select type(aaa)
type is(character(*))
if(len(aaa)/=3) print *,'err1'
if(aaa/="abc") print *,'err11'
bbb=aaa(2:3)
select type(bbb)
type is(character(*))
if(len(bbb)/=2) print *,'err2',bbb,len(bbb)
if(bbb/="bc") print *,'err22'
end select
class default
print *,'NG'
end select
end subroutine s
end
