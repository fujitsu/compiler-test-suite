      subroutine s1(a,b,c,d,i)
      character*(*) a,b,c(i,i),d(i,i)
      write(1,a//b)
      write(2,c//d)
      end
      call s0
      call c1
      print *,'pass'
      end
      subroutine s0
      character*1 a*2,b*6,c(2,2),d(2,2)
      a='(4'
      b='habcd)'
      c(1,1)='('
      d(1,1)='4'
      c(2,1)='h'
      d(2,1)='1'
      c(1,2)='2'
      d(1,2)='3'
      c(2,2)='4'
      d(2,2)=')'
      call s1(a,b,c,d,2)
      end
      subroutine c1
      character*4 x1,x2
      rewind 1
      rewind 2
      read(1,'(a)') x1
      if (x1.ne.'abcd')call err(1001)
      read(2,'(a)') x2
      if (x2.ne.'1234')call err(1002)
      end
      subroutine err(i)
      print *,'error code :',i
      print *,'fail'
      end
