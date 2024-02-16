character(2),pointer::a(:)
character(2),pointer::b
allocate(a(2),b)
a="12"
b="34"
call sss(a,b)
print *,'pass'
contains
subroutine sss(a,b)
character(*),pointer::a(:)
character(*),pointer::b
namelist /nnn/a,b
write(6,nnn)
end subroutine
end
