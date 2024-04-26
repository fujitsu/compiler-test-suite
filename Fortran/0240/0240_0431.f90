call s
print *,'pass'
end
subroutine s
i = len ('FORTRAN')
if(i.ne.7) print *,'err'
end
