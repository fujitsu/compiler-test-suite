c
       program   rnr0007
       character sss3*100
       character ch1/'x'/
c
       do 110 i=1,10
         do 100 j=1,10
           sss3(i*j:100)=ch1
 100     continue
 110   continue
       call sub(sss3)
       stop
       end
       subroutine sub(sss)
       character*100 sss,sas
       data sas/'xxxxxxxxxx         x         x         x         x
     .    x         x         x         x         x'/
         if (sss.eq.sas) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       end
