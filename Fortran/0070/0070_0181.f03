character(:),pointer::a(:)
character(:),pointer::b
allocate(a(2),source="12")
allocate(b,source="12")
call sss(a,b)
print *,'pass'
contains
subroutine sss(a,b)
character(:),pointer::a(:)
character(:),pointer::b
namelist /nnn/a,b
write(6,nnn)
end subroutine
end
