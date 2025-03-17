       real x
       data x/B'01111111100000100000000000000000'/
       if (x/=x) write(1,*) 'NaN'
       call xx
       print *,'pass'
       end
       subroutine xx
       character*20 x
       rewind 1
       read(1,'(a)') x; if (index(x,'NaN')==0)print *,'error'
       end
