      call sub1()
      call sub2()
      call sub3(1,0)
      call sub4()
      print  *,'pass'
      end
      subroutine sub5()

      character*5 chb(5), cha
      type ty1
       character cha
      end type 
      type (ty1) :: str(10)
      str%cha='a' 
      str(3)%cha='c'
      if (repeat(str(3)%cha,3).ne.'ccc') print *,"fail"
      cha='abcde'
      chb=(/(repeat(cha(i:i),5),i=1,5)/)
      if (chb(1).ne.'aaaaa') print *,"fail" 
      if (chb(2).ne.'bbbbb') print *,"fail" 
      if (chb(3).ne.'ccccc') print *,"fail" 
      if (chb(4).ne.'ddddd') print *,"fail" 
      if (chb(5).ne.'eeeee') print *,"fail" 
      cha='12345'
      chb=(/(repeat(cha(1:i),i),i=1,5)/)
      i1=1;i2=2;i3=3;i4=4;i5=5
      print *,(/cha(1:i1),cha(1:i2),cha(1:i3),
     - cha(1:i4),cha(1:i5)/)
      print *,(/(cha(1:i),i=1,5)/)
      print *,(/(repeat(cha(1:i),i),i=1,5)/)
      print *,chb(1)
      print *,chb(2)
      print *,chb(3)
      print *,chb(4)
      print *,chb(5)
      end
      subroutine sub4()
      integer*1 i1
      integer*2 i2
      integer*4 i4,j4
      integer*8 i8,j8
      parameter (j4=z'1ffffffff')
      parameter (j8=z'7ffffffffffffffff')
      i1=127
      if (len(repeat('a',i1)).ne.127) print *,"fail"
      i2=3255
      if (len(repeat('a',i2)).ne.3255) print *,"fail"
      i4= 77777
      if (len(repeat('a',i4)).ne.i4) print *,"fail"
      i8=j4   
      i8=4   
      if (len(repeat(repeat('a',i8),0)).ne.0) print *,"fail"
      i8=j8   
      i8=1   
      if (len(repeat(repeat('a',i8),0)).ne.0) print *,"fail"
      end
      subroutine sub3(i1,i0)
      character*(10) cha,chb
      character*(i0) ccc
      character*(i1) bbb
      parameter (chb='1234567890')
      cha='1234567890'
      ccc=''
      bbb='a'
      do i=1,10
      if (len(repeat('aaa',i)).ne.i*3) print *,"fail"
      if (len(repeat(chb(i:i),i)).ne.i) print *,"fail"
      if (len(repeat(chb(i:i),i)).ne.i) print *,"fail"
      if (len(repeat(cha(i:i),i)).ne.i) print *,"fail"
      if (len(repeat('',i)).ne.0) print *,"fail"
      if (len(repeat(ccc,i)).ne.0) print *,"fail"
      if (len(repeat(bbb,i)).ne.i) print *,"fail"
      end do
      end 
      subroutine sub2()
      character*(10) cha,chb
      character*(0) ccc
      character*(1) bbb
      parameter (chb='1234567890')
      cha='1234567890'
      ccc=''
      bbb='a'
      do i=1,10
      if (len(repeat('aaa',i)).ne.i*3) print *,"fail"
      if (len(repeat(chb(i:i),i)).ne.i) print *,"fail"
      if (len(repeat(chb(i:i),i)).ne.i) print *,"fail"
      if (len(repeat(cha(i:i),i)).ne.i) print *,"fail"
      if (len(repeat('',i)).ne.0) print *,"fail"
      if (len(repeat(ccc,i)).ne.0) print *,"fail"
      if (len(repeat(bbb,i)).ne.i) print *,"fail"
      end do
      end 
      subroutine sub1()
      do i=0,100
      call ss01(repeat('a',i),i)
      end do
      contains
       subroutine ss01(ccc,j)
       integer    j      
       character*(j) ccc
       if (ccc.ne.repeat('a',j)) print *,"fail"
       end subroutine
      end 
