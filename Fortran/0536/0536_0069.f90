class(*),allocatable::a(:),b,c(:),d
character(3)::cc="123"
i=2
a=[cc(2:)]
b="123"(2:)
c=[cc]
d="123"(i:)
select type(a)
type is (character(*))
if(len(a)/=2) print *,'err1',len(a)
if(a(1)//"a"/="23"//"a") print *,'err2',a(1)//"a"
end select
select type(b)
type is (character(*))
if(len(b)/=2) print *,'err3'
if(b//"a"/="23"//"a") print *,'err4'
end select
select type(c)
type is (character(*))
if(len(c)/=3) print *,'err5'
if(c(1)//"a"/="123"//"a") print *,'err6'
end select
select type(d)
type is (character(*))
if(len(d)/=2) print *,'err7'
if(d//"a"/="23"//"a") print *,'err8'
end select
print *,'pass'
end
