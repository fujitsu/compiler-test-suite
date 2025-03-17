subroutine sub(x,j)
character x*(*)
character*800:: z(j)*6
z='123456'
call s(z==trim(x))
end
subroutine s(w)
logical w(*)
if (.not.w(1))print *,'error'
end
character*800:: x='123456'
call sub(x,500000)
print *,'pass'
end
