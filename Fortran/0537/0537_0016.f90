class(*),allocatable::a(:)
type t
character(4)::ch
end type
type(t)::tt
character(4)::ch1
tt%ch="1234"
ch1=tt%ch
j=2
a=[(tt%ch(j:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
end select

a=[(tt%ch(2:),i=1,1),"234"]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
if(a(2)//"a"/="234a") print *,'err2'
end select

a=[(tt%ch(2:),i=1,1),ch1(2:),ch1(j:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
if(a(2)//"a"/="234a") print *,'err2'
if(a(3)//"a"/="234a") print *,'err2'
end select

a=[ch1(2:),"234",(tt%ch(2:),i=1,1),ch1(j:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
if(a(2)//"a"/="234a") print *,'err2'
if(a(3)//"a"/="234a") print *,'err2'
if(a(4)//"a"/="234a") print *,'err2'
end select
print *,'pass'
end
