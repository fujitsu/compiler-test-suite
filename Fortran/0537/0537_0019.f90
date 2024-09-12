class(*),pointer::a
character(:),pointer::ch
allocate(character(3)::ch)
call s(a,ch)
print *,'pass'
contains
subroutine s(a,ch)
class(*),pointer::a
character(:),pointer::ch
ch="abc"
i=2
a=>ch(2:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a//"1"/="bc1") print *,'err2'
end select
a=>ch(i:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err11'
if(a//"1"/="bc1") print *,'err22'
end select
a=>ch(int(2.0):)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a//"1"/="bc1") print *,'err2'
end select
end subroutine s
end
