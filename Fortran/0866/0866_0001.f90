class(*),allocatable::a
character(5)::ch
ch="12345"
i=2
a=ch(i:i+1)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
if(a//"a"/="23a") print *,'err2'
end select

a=ch(2:)
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err3',len(a)
if(a//"a"/="2345a") print *,'err4',a//"a"
end select

a=ch(:3)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="123a") print *,'err4',a//"a"
end select

a=ch(3:5)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="345a") print *,'err4',a//"a"
end select

a=ch(:0)
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(a//"a"/="a") print *,'err2'
end select

print *,'pass'
end
