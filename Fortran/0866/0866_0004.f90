class(*),allocatable::a
character(5)::ch
ch="12345"
i=0
j=2
k=3
l=5
a=ch
select type(a)
type is(character(*))
if(len(a)/=5) print *,'err1'
if(a//"a"/="12345a") print *,'err2'
end select

a=ch(:i)
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(a//"a"/="a") print *,'err2'
end select

a=ch(j:)
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err3',len(a)
if(a//"a"/="2345a") print *,'err4',a//"a"
end select

a=ch(:k)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="123a") print *,'err4',a//"a"
end select

a=ch(k:l)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="345a") print *,'err4',a//"a"
end select
print *,'pass'
end
