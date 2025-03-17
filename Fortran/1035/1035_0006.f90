subroutine sub(x,j)
character x*(*)
character*800:: y(j)
logical t(j)
y='123456'
t=y==trim(x)
if (.not.t(j))print *,'error-4'
end
character*800:: x='123456'
call sub(x,500000)
print *,'pass'
end
