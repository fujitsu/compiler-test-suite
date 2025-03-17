       real x
       data x/B'01111111100000100000000000000000'/
       if( (x > 0.0) .EQV. (x <= 0.0)) write(1,*) '1) X is a NaN'
       if (x/=x) write(1,*) '2) X is a NaN'
       write(1,*) 'X=',x
       call xx
       print *,'pass'
       end
       subroutine xx
       character*20 x
       rewind 1
       read(1,'(a)') x; if (index(x,'NaN')==0)print *,'error-1'
       read(1,'(a)') x; if (index(x,'NaN')==0)print *,'error-2'
       read(1,'(a)') x; if (index(x,'NaN')==0)print *,'error-3'
       end
