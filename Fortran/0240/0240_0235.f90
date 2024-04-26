call s
print *,'pass'
end
subroutine s
open (10, file='info.dat',status='new')
close(10,status='delete')
end
