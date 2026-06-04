      call sub1()
      call sub2()
      call sub3()
      call sub4()
      call sub5()
      print *,'pass'
      end
      subroutine sub5()
      integer a(1,1,9) /0,9,0,0,0,0,0,0,7/
      integer ans(9)
      ans(1:2)=pack(a,a.ne.0)
      if (ans(1).ne.9) print *,"fail"
      if (ans(2).ne.7) print *,"fail"
      i6=6
      ans(1:6)=pack(a,a.ne.0,vector=(/(i,i=1,i6)/))
      if (ans(1).ne.9 ) print *,"fail"
      if (ans(2).ne.7 ) print *,"fail"
      if (ans(3).ne.3 ) print *,"fail"
      if (ans(4).ne.4 ) print *,"fail"
      if (ans(5).ne.5 ) print *,"fail"
      if (ans(6).ne.6 ) print *,"fail"
      end
      subroutine www()
      integer a(0,10,10),c(0)
      a=c(0)
      print *,bit_size(a),bit_size(c)
      end
      subroutine sub4()
      integer a(0,10,10),ans(0),b(10),c(0)
      c=(/(i,i=3,2)/)
      a=bit_size(c)
      b=(/(i,i=1,10)/)
      ans=pack(a,a.ne.1)
      ans=pack(a,a.ne.1,(/(i,i=3,2)/))
      ans=pack(a(:,1:10,b),a.ne.1,(/(i,i=3,2)/))
      end
      subroutine sub3()
      integer a(3,3) /0,9,0,0,0,0,0,0,7/
      integer b(9) /0,9,0,0,0,0,0,0,7/
      integer ans(9)
      logical t,f
      t=.true.
      f=.false.
      ans(1:2)=pack(a,a.ne.0)
      if (ans(1).ne.9) print *,"fail"
      if (ans(2).ne.7) print *,"fail"
      ans(1:2)=pack(b,(/f,t,f,f,f,f,f,f,t/))
      if (ans(1).ne.9) print *,"fail"
      if (ans(2).ne.7) print *,"fail"
      ans(1:6)=pack(b,(/f,t,f,f,f,f,f,f,t/),
     -              vector=(/2,4,6,8,10,12/))
      if (ans(1).ne.9 ) print *,"fail"
      if (ans(2).ne.7 ) print *,"fail"
      if (ans(3).ne.6 ) print *,"fail"
      if (ans(4).ne.8 ) print *,"fail"
      if (ans(5).ne.10) print *,"fail"
      if (ans(6).ne.12) print *,"fail"
      ans(1:6)=pack(a,a.ne.0,vector=(/2,4,6,8,10,12/))
      if (ans(1).ne.9 ) print *,"fail"
      if (ans(2).ne.7 ) print *,"fail"
      if (ans(3).ne.6 ) print *,"fail"
      if (ans(4).ne.8 ) print *,"fail"
      if (ans(5).ne.10) print *,"fail"
      if (ans(6).ne.12) print *,"fail"
      ans(1:9)=pack(a,.true.)
      if (ans(2).ne.9 ) print *,"fail"
      if (ans(9).ne.7) print *,"fail"
      end
      subroutine sub2()
      integer a(3,3) /0,9,0,0,0,0,0,0,7/
      print *,'pack i/o output test'
      print *,pack(a,a.ne.0)
      print *,pack(a,a.ne.0,vector=(/2,4,6,8,10,12/))
      end
      subroutine sub1()
      real*4      r4(10)
      real*8      r8(10)
      real*16     r16(10)
      integer*1   i1(10)
      integer*2   i2(10)
      integer*4   i4(10)
      integer*8   i8(10)
      complex*8   c8(10)
      complex*16  c16(10)
      complex*32  c32(10)
      character   cha(10)
      logical*1   l1(10)
      logical*4   l4(10)
      type ty1
       sequence
       integer i(10)
      end type
      type (ty1) :: str(10)
      integer a(10)/1,2,3,4,5,6,7,8,9,10/
      integer b(10)
      parameter (b=(/(i,i=1,10)/))
      r4=1;r8=1;r16=1;
      i1=1;i2=1;i4=1;i8=1
      c8=1;c16=1;c32=1
      cha='a';l1=.true.;l4=.true.
      do i=1,10;str(i)%i=1;end do
      call ss01(pack(i1 ,l1(a) ,i1 ) )                             
      call ss02(pack(i2 ,l1(a) ,i2 ) )                            
      call ss03(pack(i4 ,l1(a) ,i4 ) )                           
      call ss04(pack(i8 ,l1(a) ,i8 ) )                          
      call ss05(pack(r4 ,l1(a) ,r4 ) )                         
      call ss06(pack(r8 ,l1(a) ,r8 ) )                        
      call ss07(pack(r16,l1(a) ,r16) )                       
      call ss08(pack(c8 ,l1(a) ,c8 ) )                      
      call ss09(pack(c16,l1(a) ,c16) )                     
      call ss10(pack(c32,l1(a) ,c32) )                    
      call ss11(pack(l1 ,l1(a) ,l1 ) )                    
      call ss12(pack(l4 ,l1(a) ,l4 ) )                    
      call ss13(pack(cha,l1(a) ,cha) )                    
      call ss14(pack(str,l1(a) ,str) )                    
      call ss01(pack(i1(b(a)) ,l1 ,i1 ) )                             
      call ss02(pack(i2(b(a)) ,l1 ,i2 ) )                            
      call ss03(pack(i4(b(a)) ,l1 ,i4 ) )                           
      call ss04(pack(i8(b(a)) ,l1 ,i8 ) )                          
      call ss05(pack(r4(b(a)) ,l1 ,r4 ) )                         
      call ss06(pack(r8(b(a)) ,l1 ,r8 ) )                        
      call ss07(pack(r16(b(a)),l1 ,r16) )                       
      call ss08(pack(c8(b(a)) ,l1 ,c8 ) )                      
      call ss09(pack(c16(b(a)),l1 ,c16) )                     
      call ss10(pack(c32(b(a)),l1 ,c32) )                    
      call ss11(pack(l1(b(a)) ,l1 ,l1 ) )                    
      call ss12(pack(l4(b(a)) ,l1 ,l4 ) )                    
      call ss13(pack(cha(b(a)),l1 ,cha) )                    
      call ss14(pack(str(b(a)),l1 ,str) )                    
      call ss01(pack(i1 ,l1 ,i1(1:a(10)) ) )                             
      call ss02(pack(i2 ,l1 ,i2(1:a(10)) ) )                            
      call ss03(pack(i4 ,l1 ,i4(1:a(10)) ) )                           
      call ss04(pack(i8 ,l1 ,i8(1:a(10)) ) )                          
      call ss05(pack(r4 ,l1 ,r4(1:a(10)) ) )                         
      call ss06(pack(r8 ,l1 ,r8(1:a(10)) ) )                        
      call ss07(pack(r16,l1 ,r16(1:a(10))) )                       
      call ss08(pack(c8 ,l1 ,c8(1:a(10)) ) )                      
      call ss09(pack(c16,l1 ,c16(1:a(10))) )                     
      call ss10(pack(c32,l1 ,c32(1:a(10))) )                    
      call ss11(pack(l1 ,l1 ,l1(1:a(10)) ) )                    
      call ss12(pack(l4 ,l1 ,l4(1:a(10)) ) )                    
      call ss13(pack(cha,l1 ,cha(1:a(10))) )                    
      call ss14(pack(str,l1 ,str(1:a(10))) )                    
      call ss01(pack(i1 ,(/l1/) ,i1 ) )                             
      call ss02(pack(i2 ,(/l1/) ,i2 ) )                            
      call ss03(pack(i4 ,(/l1/) ,i4 ) )                           
      call ss04(pack(i8 ,(/l1/) ,i8 ) )                          
      call ss05(pack(r4 ,(/l1/) ,r4 ) )                         
      call ss06(pack(r8 ,(/l1/) ,r8 ) )                        
      call ss07(pack(r16,(/l1/) ,r16) )                       
      call ss08(pack(c8 ,(/l1/) ,c8 ) )                      
      call ss09(pack(c16,(/l1/) ,c16) )                     
      call ss10(pack(c32,(/l1/) ,c32) )                    
      call ss11(pack(l1 ,(/l1/) ,l1 ) )                    
      call ss12(pack(l4 ,(/l1/) ,l4 ) )                    
      call ss13(pack(cha,(/l1/) ,cha) )                    
      call ss14(pack(str,(/l1/) ,str) )                    
      call ss01(pack(i1 ,l1 ,i1 ) )                             
      call ss02(pack(i2 ,l1 ,i2 ) )                            
      call ss03(pack(i4 ,l1 ,i4 ) )                           
      call ss04(pack(i8 ,l1 ,i8 ) )                          
      call ss05(pack(r4 ,l1 ,r4 ) )                         
      call ss06(pack(r8 ,l1 ,r8 ) )                        
      call ss07(pack(r16,l1 ,r16) )                       
      call ss08(pack(c8 ,l1 ,c8 ) )                      
      call ss09(pack(c16,l1 ,c16) )                     
      call ss10(pack(c32,l1 ,c32) )                    
      call ss11(pack(l1 ,l1 ,l1 ) )                    
      call ss12(pack(l4 ,l1 ,l4 ) )                    
      call ss13(pack(cha,l1 ,cha) )                    
      call ss14(pack(str,l1 ,str) )                    
      call ss01(pack(i1 ,l1 ) )                             
      call ss02(pack(i2 ,l1 ) )                            
      call ss03(pack(i4 ,l1 ) )                           
      call ss04(pack(i8 ,l1 ) )                          
      call ss05(pack(r4 ,l1 ) )                         
      call ss06(pack(r8 ,l1 ) )                        
      call ss07(pack(r16,l1 ) )                       
      call ss08(pack(c8 ,l1 ) )                      
      call ss09(pack(c16,l1 ) )                     
      call ss10(pack(c32,l1 ) )                    
      call ss11(pack(l1 ,l1 ) )                    
      call ss12(pack(l4 ,l1 ) )                    
      call ss13(pack(cha,l1 ) )                    
      call ss14(pack(str,l1 ) )                    
      call ss01(pack(i1 ,l4 ,i1 ) )                             
      call ss02(pack(i2 ,l4 ,i2 ) )                            
      call ss03(pack(i4 ,l4 ,i4 ) )                           
      call ss04(pack(i8 ,l4 ,i8 ) )                          
      call ss05(pack(r4 ,l4 ,r4 ) )                         
      call ss06(pack(r8 ,l4 ,r8 ) )                        
      call ss07(pack(r16,l4 ,r16) )                       
      call ss08(pack(c8 ,l4 ,c8 ) )                      
      call ss09(pack(c16,l4 ,c16) )                     
      call ss10(pack(c32,l4 ,c32) )                    
      call ss11(pack(l1 ,l4 ,l1 ) )                    
      call ss12(pack(l4 ,l4 ,l4 ) )                    
      call ss13(pack(cha,l4 ,cha) )                    
      call ss14(pack(str,l4 ,str) )                    
      call ss01(pack(i1 ,l4 ) )                             
      call ss02(pack(i2 ,l4 ) )                            
      call ss03(pack(i4 ,l4 ) )                           
      call ss04(pack(i8 ,l4 ) )                          
      call ss05(pack(r4 ,l4 ) )                         
      call ss06(pack(r8 ,l4 ) )                        
      call ss07(pack(r16,l4 ) )                       
      call ss08(pack(c8 ,l4 ) )                      
      call ss09(pack(c16,l4 ) )                     
      call ss10(pack(c32,l4 ) )                    
      call ss11(pack(l1 ,l4 ) )                    
      call ss12(pack(l4 ,l4 ) )                    
      call ss13(pack(cha,l4 ) )                    
      call ss14(pack(str,l4 ) )                    
      contains
       subroutine ss01(i)
       integer*1  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss02(i)
       integer*2  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss03(i)
       integer*4  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss04(i)
       integer*8  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss05(i)
       real*4     i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss06(i)
       real*8     i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss07(i)
       real*16    i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss08(i)
       complex*8  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss09(i)
       complex*16 i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss10(i)
       complex*32 i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss11(i)
       logical*1  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss12(i)
       logical*4  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss13(i)
       character  i(:),j(10)
       j(1)=i(1)
       end subroutine
       subroutine ss14(i)
       type ty1
        sequence
        integer i(10)
       end type
       type (ty1) ::  i(:),j(10)
       j(1)=i(1)
       end subroutine
      end
