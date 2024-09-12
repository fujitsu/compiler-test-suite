call s1
call s2
print *,"pass"
contains
subroutine s1
class(*),pointer:: a0
character(5),target::ch
ch="12345"
a0=>ch(int(2.0):)
select type(a0)
type is(character(*))
if(len(a0)/=4) print *,'err1'
if(a0//"e"/="2345e") print *,'err2'
end select
end subroutine s1
subroutine s2
class(*),allocatable::a
character(*),parameter::ch=trim("abcd")
a=ch(2:)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3'
if(a//"1"/="bcd1") print *,'err4'
end select
end subroutine s2
end
