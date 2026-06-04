c
c
      call s1
      print *,'pass'
      end
      module m1
      integer*4::m(2,2)=reshape(
     1  (/ichar('1'),ichar('2'),ichar('3'),ichar('4')/),(/2,2/))
      integer(kind=2)::v(2)=(/1,2/)
      end
      subroutine ss1(a,b,i)
      use m1
      character*(*),dimension(i,i)::a,b
      j=0
      call sub(char(m)//a(:,:)(i:3)//b(:,:)(i:3))
      call sub(char(m(v,v))//a(v,v)(i:3)//b(v,v)(i:3))
      call sub(char(m(:,v))//a(:,v)(i:3)//b(v,:)(i:3))
      call sub(char(m+j)//a(:,:)(i:3)//b(:,:)(i:3))
      call sub(char(m(v,v)+j)//a(v,v)(i:3)//b(v,v)(i:3))
      call sub(char(m(:,v)+j)//a(:,v)(i:3)//b(v,:)(i:3))
      call subx(a(:,:)(i:3)//char(m)//b(:,:)(i:3))
      call subx(a(v,v)(i:3)//char(m(v,v))//b(v,v)(i:3))
      call subx(a(v,:)(i:3)//char(m(v,:))//b(:,v)(i:3))
      call subx(a(:,:)(i:3)//char(m+j)//b(:,:)(i:3))
      call subx(a(v,v)(i:3)//char(m(v,v)+j)//b(v,v)(i:3))
      call subx(a(v,:)(i:3)//char(m(v,:)+j)//b(:,v)(i:3))
      call suby(a(:,:)(i:3)//b(:,:)(i:3)//char(m))
      call suby(a(v,v)(i:3)//b(v,v)(i:3)//char(m(v,v)))
      call suby(a(v,:)(i:3)//b(:,v)(i:3)//char(m(v,:)))
      call suby(a(:,:)(i:3)//b(:,:)(i:3)//char(m+j))
      call suby(a(v,v)(i:3)//b(v,v)(i:3)//char(m(v,v)+j))
      call suby(a(v,:)(i:3)//b(:,v)(i:3)//char(m(v,:)+j))
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
      subroutine subx(a)
      use m1
      character*(*) a(4)
      integer::k=3,j=4
      if (len(a)/=5)print *,'fail'
      if (a(1)/='23'//char(m(1,1))//'23')print *,'fail'
      if (a(2)/='67'//char(m(2,1))//'6767'(3:4))print *,'fail'
      if (a(3)/='bc'//char(m(1,2))//'bcbc'(k:4))print *,'fail'
      if (a(4)/='fg'//char(m(2,2))//'fgfg'(3:j))print *,'fail'
      end
      subroutine suby(a)
      use m1
      character*(*) a(4)
      integer::k=3,j=4
      if (len(a)/=5)print *,'fail'
      if (a(1)/='23'//'23'//char(m(1,1)))print *,'fail'
      if (a(2)/='67'//'6767'(3:4)//char(m(2,1)))print *,'fail'
      if (a(3)/='bc'//'bcbc'(k:4)//char(m(1,2)))print *,'fail'
      if (a(4)/='fg'//'fgfg'(3:j)//char(m(2,2)))print *,'fail'
      end
      subroutine s1
      parameter (i=2)
      character*(4),dimension(i,i)::a,b
      data a/'1234','5678','abcd','efgh'/
      data b/'1234','5678','abcd','efgh'/
      call       ss1(a,b,i)
      end
