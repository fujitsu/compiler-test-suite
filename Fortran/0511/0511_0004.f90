integer,allocatable::a1(:)
allocate(a1(2))
a1=1
associate(p=>"ok")
associate(p=>a1)
p=[1,2]
end associate
associate(p=>a1(:))
p=[1,2]
end associate
associate(p=>a1(1:2))
p=[1,2]
end associate
end associate
print *,'pass'
end
