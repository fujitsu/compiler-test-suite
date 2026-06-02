      call s1
      print *,'pass'
      end
      subroutine s1
      parameter(i=2)
      character*(4),dimension(i,i)::a,b
      a(:,1)=(/'1234','5678'/)
      a(:,2)=(/'abcd','efgh'/)
      b(:,1)=a(:,1)
      b(:,2)=a(:,2)
      call       ss1(a,b,i)
      end
      module m1
      contains
      subroutine s(a1,a2,i)
      character(*),dimension(:,:)::a1
      character(*),dimension(:)::a2
      if (len(a1)/=i)print *,'fail'
      if (len(a2)/=i)print *,'fail'
      if (size(a1)/=4       )print *,'fail'
      if (size(a2)/=4       )print *,'fail'
      if (any(reshape(a1,(/4/))/=a2))print *,'fail'
      end subroutine
      end
      subroutine ss1(a,b,i)
      use m1
      character*(*),dimension(i,i)::a,b
      integer*4 ::m(2,2)=
     1 reshape((/ichar('1'),ichar('2'),ichar('3'),ichar('4')/),(/2,2/))
      call s(char(ichar(char(m)))//
     1       a(:,:)(i:3)//b(:,:)(i:3),
     1       (/'12323','26767','3bcbc','4fgfg'/),5)
      call s(a(:,:)(i:3)//
     1   char(ichar(char(m)))//b(:,:)(i:3),
     1       (/'23123','67267','bc3bc','fg4fg'/),5)
      call s(a(:,:)(i:3)//b(:,:)(i:3)//
     1   char(ichar(char(m))),
     1       (/'23231','67672','bcbc3','fgfg4'/),5)
      call s(a(:,:)(i:3)//b(:,:)(i:3),
     1       (/'2323','6767','bcbc','fgfg'/),4)
      call s(char(ichar(char(m)))//
     1       char(ichar(char(m)))//b(:,:)(i:3),
     1       (/'1123','2267','33bc','44fg'/),4)
      call s(char(ichar(char(m)))//
     1      a(:,:)(i:3)//char(ichar(char(m))),
     1       (/'1231','2672','3bc3','4fg4'/),4)
      call s(char(ichar(char(m)))//
     1       char(ichar(char(m)))//
     1       char(ichar(char(m))),
     1       (/'111','222','333','444'/),3)
      call s(a(:,:)(i:3)//
     1       char(ichar(char(m)))//
     1       char(ichar(char(m))),
     1       (/'2311','6722','bc33','fg44'/),4)
      end
