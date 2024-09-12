class(*),allocatable::a(:),b,c(:)
character(3)::cc="123"
i=2
a=[cc(i:)]
b=cc(2:)
select type(a)
type is (character(*))
if(len(a)/=2) print *,'err1',len(a)
if(a(1)/="23") print *,'err2'
end select
select type(b)
type is (character(*))
if(len(b)/=2) print *,'err11',len(b)
if(b//"a"/="23a") print *,'err22'
end select
print *,'pass'
end
