      character*26 str1, str2
      data str1 /'abcdefghijklmnopqrstuvwxyz'/
      data str2 /'abcdefghijklmnopqrstuvwxyz'/

      do 700 i=1, 10
         if (str1(3:6).lt.str2(i:i+3)) goto 710
  700 continue
  710 continue
      print *,'pass'
      end
