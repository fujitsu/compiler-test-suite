subroutine sz()
write(1,*)1   
end subroutine
subroutine s() bind(c,name='x')
write(1,*)2   
end subroutine
subroutine tz()
write(1,*)11   
end subroutine
subroutine t() bind(c)
write(1,*)12   
end subroutine

interface
subroutine s() bind(c,name='x')
end subroutine
subroutine t() bind(c)
end subroutine
end interface
call s()
call t()
rewind 1
read(1,*) k
if (k/=2) print *,201
read(1,*) k
if (k/=12) print *,202
print *,'pass'
end
