class(*),allocatable::a(:)
character(4)::ch
ch="1234"
j=2
a=[(ch(2:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err1'
if(a(1)//"a"/="234a") print *,'err2'
end select
a=[(ch(j:),i=1,1)]
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err11'
if(a(1)//"a"/="234a") print *,'err22'
end select
print *,'pass'
end
