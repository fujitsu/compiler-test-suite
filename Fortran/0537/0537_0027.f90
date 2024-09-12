class(*),allocatable::a(:)
character(3)::ch
ch="234"
a=[ch(1:)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
end select
a=[ch(:3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err11'
if(a(1)//"a"/="234a") print *,'err22'
end select
a=[ch(1:3)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err111'
if(a(1)//"a"/="234a") print *,'err222'
end select
print *,'pass'
end
