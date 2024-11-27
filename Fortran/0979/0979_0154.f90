integer :: ii

open (unit=10, file='aa.dat',status='NEW')

 call sub(aa,ii)

close(10,status='delete')

print *,'pass'

end

subroutine sub(a,i)
 integer i

 flush(unit=15,IOSTAT=i)

end subroutine
