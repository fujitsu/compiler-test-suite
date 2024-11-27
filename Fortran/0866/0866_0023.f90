class(*),allocatable::a
a="12345"
select type(a)
type is(character(*))
if(len(a)/=5) print *,'err1'
if(a//"a"/="12345a") print *,'err2'
end select

a="12345"(:0)
select type(a)
type is(character(*))
if(len(a)/=0) print *,'err1'
if(a//"a"/="a") print *,'err2'
end select

a="12345"(2:)
select type(a)
type is(character(*))
if(len(a)/=4) print *,'err3',len(a)
if(a//"a"/="2345a") print *,'err4',a//"a"
end select

a="12345"(:3)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="123a") print *,'err4',a//"a"
end select

a="12345"(2:4)
select type(a)
type is(character(*))
if(len(a)/=3) print *,'err3',len(a)
if(a//"a"/="234a") print *,'err4',a//"a"
end select
print *,'pass'
end
