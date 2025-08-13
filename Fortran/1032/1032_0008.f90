       real x,y
       data y/B'01111111100000100000000000000000'/
       write(23) y
       rewind 23
       read(23) x
       if (x/=x) write(7,*) 'NaN'
       call xx
       print *,'pass'
       end
       subroutine xx
       character*20 x
       rewind 7
       read(7,'(a)') x; if (index(x,'NaN')==0)print *,'error'
       end
