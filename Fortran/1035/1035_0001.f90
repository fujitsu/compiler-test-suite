subroutine sub(x,j)
character x*(*)
character*800:: y(j)
logical t
i=1
y='123456'
t=any(y==trim(x))
if (.not.t)print *,'error-4'
i=10
t=any(y==trim(x(1:i)))
if (.not.t)print *,'error-5'
end
character*800:: x='123456'
call sub(x,500000)
print *,'pass'
end
