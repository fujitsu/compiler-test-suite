c
       program   rnrst0a
       dimension iary(10)
       i=iabs(2)
       iary(i) = i*2
       iary(i+1) = i*4
       iary(i*2) = i/2
       iary(i+i) = i/4
       iary(i+i+(i+i)) = i
       call sub(iary)
       stop
       end
       subroutine  sub(iary)
         dimension iary(10)
         if ( (iary(2).eq.4) .and.
     .        (iary(3).eq.8) .and.
     .        (iary(4).eq.0) .and.
     .        (iary(8).eq.2)       ) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
