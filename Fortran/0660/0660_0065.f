      program main
      interface aaa
      subroutine sub4(a)
      integer a(:,:)
      end subroutine
      subroutine sub1(a)
      integer a(:)
      end subroutine
      end interface
      common /com1/ i,j
      integer a(10)
      integer b(10,10)
      a=(/(i,i=1,10)/)
      b=1                
      i=1;j=10
      call sub1(a)   
      call sub2(a)   
      call sub3(a)   
      call sub4(b)   
      print *,'pass'
      end

      subroutine sub4(a)
      integer a(:,:)
       j=loc(a) 
      end
      subroutine sub1(a)
      integer a(:)
       j=loc(a) 
      end
      subroutine sub2(a)
      integer a(*)
       j=loc(a) 
      end
      subroutine sub3(a)
      common /com1/ i,j
      integer a(i:j)
      j=loc(a) 
      end
