class(*),pointer:: a1,a2,a3,a4,a5,a6,a0
character(5),target::ch
ch="12345"
i=1
j=5
a0=>ch
a1=>ch(:)
a2=>ch(1:5)
a3=>ch(1:)
a4=>ch(:5)
a5=>ch(i:)
a6=>ch(:j)
call s(a1)
call s(a2)
call s(a3)
call s(a4)
call s(a5)
call s(a6)
print *,'pass'
contains
subroutine s(a)
class(*)::a
select type(a) 
type is(character(*))
if(len(a)/=5) print *,'err1'
if(a//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
end subroutine s
end


