subroutine sub(x,j)
character x*(*)
character*800:: z(j)*1
z='0'
call s(z//trim(x))
end
subroutine s(w)
character w(*)*(*)
if (w(1)/='0123456')print *,'error'
end
character*800:: x='123456'
call sub(x,500000)
print *,'pass'
end
