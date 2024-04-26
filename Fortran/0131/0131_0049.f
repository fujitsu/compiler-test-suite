c
       program   rnr000a
       character ch*100, st*100
       data st/'+++++++++yyyyyy++++++++++'/
       i=iabs(10)
       j=iabs(15)
       ch(i:i+5)='a'
       ch(j:j+5)=st(i:i+5)
       call disp( ch )
       stop
       end
       subroutine disp( ch )
       character*100 ch
         if ( ch(10:20).eq.'a    yyyyyy' ) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
