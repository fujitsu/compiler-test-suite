call test01()
print *,'pass'
end

subroutine test01()
common /com / ia
equivalence(ia,i01)
data i01 /1/
end

subroutine test02()
equivalence(ia,i01)
data i01 /1/
end

subroutine test03()
data i01 /1/
equivalence(ia,i01)
common /com / iaa
end

subroutine test04()
common ia
equivalence(ia,i01)
data i01 /1/
end
