      integer*2 aa,bb
      integer*2 a,b
      integer*4 c,d
      parameter(a=97)
      parameter(b=98)
      parameter(c=99)
      parameter(d=100)
      parameter(aa=101)
      parameter(bb=102)
      call sub1(char(ichar(char(a))),char(ichar(char(b))))
      call sub1(char(ichar(char(ichar(char(ichar(char(a))))))),
     1char(ichar(char(b))))
      call sub2(char(ichar(char(c))),char(ichar(char(d))))
      call sub3(char(ichar(char(aa))),char(ichar(char(bb))))
      write(6,*) '*****pass*****'
      stop
      end
      subroutine sub1(x,y)
      character*(*) x,y
      call sub10(x//y)
      call sub11(y//x//x//y)
      end
      subroutine sub2(x,y)
      character*(*) x,y
      call sub20(x//y)
      call sub21(y//x//x//y)
      end
      subroutine sub3(x,y)
      character*(*) x,y
      call sub30(x//y)
      call sub31(y//x//x//y)
      end
      subroutine sub10(x)
      character*(*) x
      if(x.ne.'ab') print *,'sub10 err'
      end
      subroutine sub11(x)
      character*(*) x
      if(x.ne.'baab') print *,'sub11 err'
      end
      subroutine sub20(x)
      character*(*) x
      if(x.ne.'cd') print *,'sub20 err'
      end
      subroutine sub21(x)
      character*(*) x
      if(x.ne.'dccd') print *,'sub21 err'
      end
      subroutine sub30(x)
      character*(*) x
      if(x.ne.'ef') print *,'sub30 err'
      end
      subroutine sub31(x)
      character*(*) x
      if(x.ne.'feef') print *,'sub31 err'
      end
