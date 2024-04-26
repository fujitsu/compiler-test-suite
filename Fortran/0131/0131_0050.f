c
       program   rnr000b
       character str1*100/'.'/
       character str2*100/','/
       character sss1*100/'++'/
       character sss2*100
       character sss3*100
       character chz/'0'/, ch1/'1'/, ch2/'2'/
       character stn1*10/'abcdefghij'/
       character stn2*10/'0123456789'/
c
       i=ichar(ch1)-ichar(chz)
       j=ichar(ch2)-ichar(ch1)
       sss3(i*j:100)=ch1//stn1//str1(i:j)//sss1(:j*2)
       sss2(j:i*10)=sss3(1:i)//ch2//stn2(i:i+4)//str2(i/j:i*j)
       call sub( sss2, sss3 )
       stop
       end
       subroutine sub( s1, s2 )
       character*100 s1, s2
       if ( s1(1:10).eq.'1201234,' ) then
         write(6,*) '***         : s1 ok ***'
       else
         write(6,*) '***         : s1 ng ***'
         write(6,*) s1
       endif
       if ( s2.eq.'1abcdefghij.++' ) then
         write(6,*) '***         : s2 ok ***'
       else
         write(6,*) '***         : s2 ng ***'
         write(6,*) s2
       endif
       end
