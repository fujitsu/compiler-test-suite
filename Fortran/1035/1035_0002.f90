subroutine sub(x,j)
character x*(*)
character*800:: y(j)
y=trim(x)
if (y(j)/='123456')print *,'error'
end
character*800:: x='123456'
call sub(x,500000)
print *,'pass'
end
