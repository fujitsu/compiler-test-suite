call test01()
print *,"pass"
end

subroutine test01()
character(kind=4,len=5) cha ,ii
equivalence(cha(5:5),ii)
if (1.eq.2) print *,loc(ii)
if (1.eq.2) print *,loc(cha(4:4))
end
