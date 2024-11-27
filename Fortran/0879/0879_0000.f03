class(*),allocatable::x
allocate(x,source=1)
aaa_:select type(x)
type is(integer) aaa_
aaa_:associate(p=>1)
end associate aaa_
end select aaa_
print *,'pass'
end
