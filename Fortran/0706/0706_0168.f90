c
c
      call s1
      print *,'pass'
      end
      module m1
      integer*4::m(2,2)=reshape(
     1  (/ichar('1'),ichar('2'),ichar('3'),ichar('4')/),(/2,2/))
      end
      subroutine ss1(a,b,i)
      use m1
      character*(*),dimension(i,i)::a,b
      call sub(char(m)//a(:,:)(i:3)//b(:,:)(i:3))
      end
      subroutine sub(a)
      use m1
      character*(*) a(4)
      if (len(a)/=5)print *,'fail'
      if (a(1)/=char(m(1,1))//'2323')print *,'fail'
      if (a(2)/=char(m(2,1))//'6767')print *,'fail'
      if (a(3)/=char(m(1,2))//'bcbc')print *,'fail'
      if (a(4)/=char(m(2,2))//'fgfg')print *,'fail'
      end
      subroutine s1
      parameter (i=2)
      character*(4),dimension(i,i)::a,b
      data a/'1234','5678','abcd','efgh'/
      data b/'1234','5678','abcd','efgh'/
      call       ss1(a,b,i)
      end
