class(*),allocatable::a(:)
character(4)::ch
ch="1234"
a=[(ch(1:),i=1,1),(ch(1:),i=1,1),ch(1:)]
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err1'
if(a(1)//"a"/="1234a") print *,'err2'
if(a(2)//"a"/="1234a") print *,'err3'
if(a(3)//"a"/="1234a") print *,'err4'
end select

a=[(ch(:),i=1,1),ch(1:),"1234"(1:),(ch(1:),i=1,1),"1234"]
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err11'
if(a(1)//"a"/="1234a") print *,'err22'
if(a(2)//"a"/="1234a") print *,'err33'
if(a(3)//"a"/="1234a") print *,'err44'
if(a(4)//"a"/="1234a") print *,'err55'
if(a(5)//"a"/="1234a") print *,'err66'
end select

print *,'pass'
end
