#if defined(sun)
use service_routines,only:ctime,time,ioinit
logical::l
open(11,file='a.file',status='replace')
write(11,*) 'Fortran:',ctime(time( ))
close(11)
l=ioinit ( .true., .true., .true., 'FORT', .true.)
write(10,fmt='(2a)')' Fortran:',ctime(time( ))
close(10)
l=ioinit ( .true., .true., .true., 'FORT', .false.)
write(999,fmt='(2a)')' Fortran:',ctime(time( ))
close(999)
#endif
print *,'pass'
end
