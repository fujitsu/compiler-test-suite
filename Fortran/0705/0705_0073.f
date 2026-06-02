      call s1
      print *,'pass'
      end
      subroutine s1
      character*5 a(3)/3*'abcde'/
      character*6 b(3)
      data i,j/1,3/
      open (1,delim='quote')
      call   s(a(1:3)(i:j)//a(1:3)(i:j))
      write(1,*)  a(1:3)(i:j)//a(1:3)(i:j)
      rewind 1
      read (1,*) b
      if (b(1)/='abcabc')call err(5)
      if (b(2)/='abcabc')call err(6)
      if (b(3)/='abcabc')call err(7)
      end
      subroutine s(a)
      character*(*) a(*)
      if (len(a)/=6)call err(1)
      if (a(1)/='abcabc')call err(2)
      if (a(2)/='abcabc')call err(3)
      if (a(3)/='abcabc')call err(4)
      end
      subroutine err(i)
      print *,'fail'
      print *,'error code :',i
      end
