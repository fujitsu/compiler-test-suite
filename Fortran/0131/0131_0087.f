c
       program   snrut2
       character ch1*100,ch2*100,st*100,na*100
       data st/'+++++++++YYYYYY++++++++++'/
       data na/'--------lastname---------'/
       i=iabs(10)
       j=iabs(15)
       ch1(i:i+5)='a'
       ch1(j:j+5)=st(i:i+5)
       i=iabs(9)
       j=iabs(13)
       ch2(i+2:i+5)='f.'
       ch2(j:j+8)=na(i:i+7)
       call disp( ch1,ch2 )
       stop
       end
       subroutine disp( ch1,ch2 )
       character*100 ch1,ch2
         if ( ch1(10:20).eq.'a    YYYYYY'  .and.
     +        ch2(11:20).eq.'f.lastname'        ) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
