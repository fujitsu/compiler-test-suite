call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
print *,'pass'
end
subroutine sub01()
integer i,j(10)
data i /1/
equivalence(i,j(4))
k=i
if (k.ne.1) write(6,10) 'error'
10 format(a)
end
subroutine sub02()
integer i,j(10)
equivalence(i,j(4))
j=(/1,2,3,4,5,6,7,8,9,10/)
k=i
if (k.ne.4) write(6,10) 'error'
10 format(a)
end

subroutine sub03()
integer i(10),j(10)
data i/1,2,3,4,5,6,7,8,9,10/
equivalence(i,j(4))
k=i(1)
k=i(j(4))
if (k.ne.1) write(6,10) 'error'
10 format(a)
end

subroutine sub04()
integer i,j(10)
data i /1/
equivalence(i,j(4))
k=i
if (k.ne.1) write(6,10) 'error'
j=22
10 format(a)
end
subroutine sub05()
integer i,j(10)
equivalence(i,j(4))
j=(/1,2,3,4,5,6,7,8,9,10/)
k=i
if (k.ne.4) write(6,10) 'error'
i=111
10 format(a)
end

subroutine sub06()
integer i,j(10)
data i /1/
equivalence(i,j(4))
k=i
if (k.ne.1) write(6,10) 'error'
i=22
10 format(a)
end

subroutine sub07()
integer i
data i /1/
k=i
if (k.ne.1) write(6,10) 'error'
i=22
10 format(a)
end
