#if defined(sun)
use service_routines,only:ctime,time,ioinit
logical :: l
l = ioinit ( .true., .true., .true., 'FORT', .true.)
write(9,fmt='(2a)')' Fortran:',ctime(time())
l = ioinit ( .false., .true., .true., 'FORT', .true.)
write(9,fmt='(2a)')' Fortran:',ctime(time())
close(9)
#endif
print *,'pass'
end
