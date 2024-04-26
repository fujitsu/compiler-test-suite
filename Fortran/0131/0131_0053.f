c
       program   st26
       character str1*100, str2*100, str3*100
       data      str1 / 'abcdefg' /
       data      str2 / '**12345' /
       data      str3 / 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy' /
       character ssss*100
       integer   len1, len2, len3, len4
c
       len1=1
       len2=2
       len3=3
       len4=4
       do 100 i=1,100
         do 100 j=1,100
 100       ssss( ifun(len1,len2) : ifun(len3,len4) ) =
     .     str1( len1            : len2            ) //
     .     str2( len1/len2+1     : len1*len2       ) //
     .     str3( mod(len2,len3)  : iabs(len1-len4) )
       call disp( ssss )
       stop
       end
       subroutine disp( ssss )
       character*(*) ssss
         if ( ssss(2:12).eq.'ab**yy' ) then
           write(6,*) ' ***** ok *****'
         else
           write(6,*) ' ***** ng *****'
         endif
       end
       function ifun(i1,i2)
         ifun=i1*i2
         return
       end
