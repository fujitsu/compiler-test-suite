subroutine s
class(*),pointer::a
character(3),target::ch
integer(1):: i1
integer(2):: i2
integer:: i4
integer(8):: i8
i8=3
i1=3
i2=3
i4=3
ch="123"
a=>ch(:)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a/="123") print *,'err2'
end select
a=>ch(:i8)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3'
if(a/="123") print *,'err4'
end select
a=>ch(:i1)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err5'
if(a/="123") print *,'err6'
end select
a=>ch(:i2)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err7'
if(a/="123") print *,'err8'
end select
a=>ch(:i4)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err9'
if(a/="123") print *,'err10'
end select
end
call s
print *,'pass'
end
