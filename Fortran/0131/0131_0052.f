c
       program    rnrst27
       character  sans*100, str1*100, str2*100, str3*100, sa2*100
       parameter(sa2='0----5----0----5----0----5----0----5----0----5----
     .0----5-----0----5----0----5----0----5----012345678')
       if (sans( str1, str2, str3 ) .eq. sa2) then
         write(6,*) ' ***** ok *****'
       else
         write(6,*) ' ***** ng *****'
       endif
       stop
       end
       function      sans( str1, str2, str3 )
       character*(*) sans
       character*(*) str1, str2, str3
       character*30  sss1
       character*69  sss2
       character     sss3
c
       do 100 i=1,100
         str1 = sss1() // sss2() // sss3()
         str2 = sss2() // sss3() // sss1()
         str3 = sss3() // sss1() // sss2()
 100   continue
       sans=str1(:30)//str2(31:60)//str3(61:ilen(10))
       return
       end
       function     sss1()
       character*30 sss1
         sss1='0----5----0----5----0----5----'
       end
       function     sss2()
       character*69 sss2
       character*30 sss1
         sss2=sss1() // sss1() // '012345678'
       end
       function     sss3()
       character    sss3
         sss3='z'
       end
       function     ilen(i)
         ilen=i*10
       end
