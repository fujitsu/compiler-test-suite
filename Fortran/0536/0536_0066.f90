class(*),allocatable::a(:),b
character(3)::cc="123"
a=[cc(2:)]
b="123"(2:)
select type(a)
type is (character(*))
if(len(a)/=2) print *,'err1',len(a)
if(a(1)//"a"/="23"//"a") print *,'err2'
end select
select type(b)
type is (character(*))
if(len(b)/=2) print *,'err3'
if(b//"a"/="23"//"a") print *,'err4'
end select
print *,'pass'
end
