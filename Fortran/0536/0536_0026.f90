class(*),allocatable::a(:),b(:)
character(3)::ch
ch="123"
i=2
a=[character::ch(2:) ]
b=[character::ch(i:) ]
select type(a)
type is(character(*))
if(len(a)/=1) print *,'err',len(a)
if(a(1)//"a"/="2a") print *,'err2',a(1)//"a"
end select
select type(b)
type is(character(*))
if(len(b)/=1) print *,'err11',len(b)
if(b(1)//"a"/="2a") print *,'err22',b(1)//"a"
end select
print *,'pass'
end
