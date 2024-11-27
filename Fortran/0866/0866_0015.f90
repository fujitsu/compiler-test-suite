call sss("abc")
print *,'pass'
contains
subroutine sss(ch)
class(*),pointer :: x1,x2
character(*),target :: ch
integer(8)::i
i=1
x1 => ch(2_1:)
x2 => ch(:1_2**1_2)
aaa_ :select type(x1)
type is (character(*))
if(len(x1)/=2) print *,'err1'
if(x1//"1"/="bc1") print *,'err2'
ccc :select type(x2)
type is (character(*))
if(len(x2)/=1) print *,'err3'
if(x2//"1"/="a1") print *,'err4'
end select ccc
end select aaa_

x1=>ch(:i)
class :select type(x1)
type is (character(*))
if(len(x1)/=1) print *,'err5'
if(x1//"1"/="a1") print *,'err6'
end select class

x1=>ch(i+i+i:)
select :select type(x1)
type is (character(*))
if(len(x1)/=1) print *,'err7'
if(x1//"1"/="c1") print *,'err8'
end select select


end subroutine
end
