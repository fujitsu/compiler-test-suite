NAMELIST /na/i
call subb()
call subb2()
print *,'pass'
contains
subroutine subb()
if (1.eq.2) then
read(5,nml=na)
end if
end subroutine
subroutine subb2()
if (1.eq.2) then
write(6,nml=na)
end if
end subroutine
end
