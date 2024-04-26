#if defined(sun)
use service_routines,only:ctime,time,ioinit
logical :: l
l = ioinit ( .true., .true., .true., 'FORT', .true.)
write(10,fmt='(2a)')' Fortran:',ctime(time())
l = ioinit ( .false., .true., .true., 'FORT', .true.)
write(10,fmt='(2a)')' Fortran:',ctime(time())
close(10)
#endif
print *,'pass'
end
