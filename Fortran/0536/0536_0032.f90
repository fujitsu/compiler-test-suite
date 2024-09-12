character(:),pointer::aaa
allocate(aaa,source="abc")
call s(aaa)
print *,'pass'
contains
subroutine s(aaa)
class(*),target::aaa
class(*),pointer::bbb
select type(aaa)
type is(character(*))
if(len(aaa)/=3) print *,'err1'
if(aaa/="abc") print *,'err11'
bbb=>aaa(2:)
select type(bbb)
type is(character(*))
if(len(bbb)/=2) print *,'err2',len(bbb)
if(bbb//""/="bc"//"") print *,'err22',bbb,"bc"
end select
class default
print *,'NG'
end select
end subroutine s
end
