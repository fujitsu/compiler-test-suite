call test01()
print *,"pass"
end

subroutine test01()
character(kind=4) ccc,jj
common /com/ ccc,ii
equivalence(ccc,jj)
end 

