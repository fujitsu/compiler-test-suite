character*10 aa

open (unit=10, file='aa.dat',status='NEW')
flush(unit=-1)

close(10,status='delete')

print *,'pass'

end
