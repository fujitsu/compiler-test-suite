c
       program     rnrst28
       character   str1*100, str2*31, str3*100
       character   udl
       str1='0____0____1____1____2____2____3'
       str2='*    *    *    *    *    *    *'
       udl ='_'
       str3='--------------------------------'
c
       do 100 i=1,31
         if (str2(i:i).eq.'*') then
           str3(i:i)=char(i/10+ichar('0'))
         else
           str3(i:i)=udl
         endif
 100   continue
       i=1
       do 200 while (i.le.100)
         if (str3(:i).ne.str1(:i)) then
           if (i.ge.32) then
             write(6,*) '*** ok ***'
           else
             write(6,*) '*** ng ***'
             write(6,*) 'i=',i
             write(6,*) str3
           endif
           stop
         endif
 200     i=i+1
       end
