call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,'pass'
end
subroutine eee()
print *,'error'
end
subroutine sub01()
integer i,j
data i /1/
equivalence(i,j)
k=i
if (k.ne.1) call eee()
end
subroutine sub02()
integer i,j
equivalence(i,j)
j=100
k=i
if (k.ne.100) call eee()
end
subroutine sub03()
integer i,j
data j /5/
equivalence(i,j)
k=i
if (k.ne.5) call eee()
end
subroutine sub04()
integer i(2),j(10)
data i /1,2/
equivalence(i,j)
k=i(1)
if (k.ne.1) call eee()
end
subroutine sub05()
integer i(30),j(4)
equivalence(i,j)
j(1)=100
k=i(1)
if (k.ne.100) call eee()
end
subroutine sub06()
integer i(1),j(1)
data j /5/
equivalence(i,j)
k=i(1)
if (k.ne.5) call eee()
end
