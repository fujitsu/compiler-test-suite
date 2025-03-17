      call sub1()
      call sub2()
      print *,'pass'
      end
      subroutine sub2()
      if (modulo(8,5).ne.3) print *,"fail"
      if (modulo(-8,5).ne.2) print *,"fail"
      if (modulo(8,-5).ne.-2) print *,"fail"
      if (modulo(-8,-5).ne.-3) print *,"fail"
      end
      subroutine sub1()
      real*4      r4
      real*8      r8
      real*16     r16
      integer*1   i1
      integer*2   i2
      integer*4   i4
      integer*8   i8
      complex*8   c8
      complex*16  c16
      complex*32  c32
      r4=1;r8=1;r16=1;
      i1=1;i2=1;i4=1;i8=1
      c8=1;c16=1;c32=1
      call ss01(modulo(i1 ,i1 ) )                             
      call ss02(modulo(i2 ,i2 ) )                            
      call ss03(modulo(i4 ,i4 ) )                           
      call ss04(modulo(i8 ,i8 ) )                          
      call ss05(modulo(r4 ,r4 ) )                         
      call ss06(modulo(r8 ,r8 ) )                        
      call ss07(modulo(r16,r16) )                       
      contains
       subroutine ss01(i)
       integer*1  i,j
       j=i
       end subroutine
       subroutine ss02(i)
       integer*2  i,j
       j=i
       end subroutine
       subroutine ss03(i)
       integer*4  i,j
       j=i
       end subroutine
       subroutine ss04(i)
       integer*8  i,j
       j=i
       end subroutine
       subroutine ss05(i)
       real*4     i,j
       j=i
       end subroutine
       subroutine ss06(i)
       real*8     i,j
       j=i
       end subroutine
       subroutine ss07(i)
       real*16    i,j
       j=i
       end subroutine
       subroutine ss08(i)
       complex*8  i,j
       j=i
       end subroutine
       subroutine ss09(i)
       complex*16 i,j
       j=i
       end subroutine
       subroutine ss10(i)
       complex*32 i,j
       j=i
       end subroutine
      end
