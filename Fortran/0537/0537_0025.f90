class(*),allocatable::a(:)
type t
character(3)::ch
end type
type(t)::tt
tt%ch="234"
a=[(tt%ch(1:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
end select
a=[(tt%ch(:3),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err11'
if(a(1)//"a"/="234a") print *,'err22'
end select
a=[(tt%ch(1:3),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err111'
if(a(1)//"a"/="234a") print *,'err222'
end select

print *,'pass'
end
