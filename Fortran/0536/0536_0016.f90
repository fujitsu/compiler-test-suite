class(*),pointer:: a1(:),a2(:),a3(:),a4(:),a5(:),a6(:)
character(5),target::ch(1)
ch="12345"
i=1
j=5
a1=>ch(:)(i:j)
a2=>ch(:)(1+j-j:5)
a3=>ch(:)(1:j-1+1)
a4=>ch(:)(i**1:5)
a5=>ch(:)(i:5)
a6=>ch(:)(1:j)
call s(a1)
call s(a2)
call s(a3)
call s(a4)
call s(a5)
call s(a6)
print *,'pass'
contains
subroutine s(a)
class(*)::a(:)
select type(a) 
type is(character(*))
if(len(a)/=5) print *,'err1'
if(a(1)//"a"/="12345"//"a") print *,'err2'
class default
print *,'ng'
end select
end subroutine s
end


