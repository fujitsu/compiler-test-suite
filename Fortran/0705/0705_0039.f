      call s1
      call s2
      call s3
      print *,'pass'
      end
      subroutine err(k,j)
      print *,'fail'
      print *,'error code :',k,j
      end
      subroutine s1
      implicit integer*1 (a)
      parameter (ap0=z'f1',ap1=z'0f',ap2=z'fe')
      dimension aa0(2),aa1(2),aa2(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t1( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,1001)
      call t1( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,1002)
      call t1( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1003 )
      call t1( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,1004)
      call t1( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,1005)
      call t1( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1006 )
      call t1( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,1007)
      call t1( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,1008)
      call t1( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1009 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,2001)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,2002)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,2003 )
      if ( xor(ap0,ap1)*xor(ap0,ap1) .ne.ap2*ap2)call err(20 ,2004)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2)call err(20 ,2005)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,2006 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,2007)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,2008)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                              call err(20,2009 )
      end
      subroutine s2
      implicit integer*2 (a)
      parameter (ap0=z'f0f1',ap1=z'0f0f',ap2=z'fffe')
      dimension aa1(2),aa2(2),aa0(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t2( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,11001)
      call t2( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,11002)
      call t2( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11003 )
      call t2( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,11004)
      call t2( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,11005)
      call t2( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11006 )
      call t2( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,11007)
      call t2( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,11008)
      call t2( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11009 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,12001)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,12002)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,12003 )
      if ( xor(ap0,ap1)*xor(ap0,ap1) .ne.ap2*ap2)call err(20 ,12004)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2)call err(20 ,12005)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,12006 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,12007)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,12008)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                              call err(20,12009 )
      end
      subroutine s3
      implicit integer*4 (a)
      parameter (ap0=z'f0f0f0f1',ap1=z'0f0f0f0f',ap2=z'fffffffe')
      dimension aa1(2),aa2(2),aa0(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t3( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,21001)
      call t3( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,21002)
      call t3( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1 aa2(2)*aa2(2),21003 )
      call t3( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,21004)
      call t3( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,21005)
      call t3( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),21006 )
      call t3( xor(ap0,ap1)*xor(ap0,ap1) ,ap2*ap2 ,21007)
      call t3( xor(av0,av1)*xor(av0,av1) ,av2*av2 ,21008)
      call t3( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),21009 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,22001)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,22002)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,22003 )
      if ( xor(ap0,ap1)*xor(ap0,ap1) .ne.ap2*ap2)call err(20 ,22004)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2)call err(20 ,22005)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,22006 )
      if ( xor(ap0,ap1)*xor(ap0,ap1).ne. ap2*ap2) call err(20,22007)
      if ( xor(av0,av1)*xor(av0,av1) .ne.av2*av2) call err(20,22008)
      if ( xor(aa0(2),aa1(2))*xor(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                              call err(20,22009 )
      end
      subroutine t1(a1,a2,j)
      integer*1 a1,a2
      if (a1.ne.a2)call err(2001,j)
      end
      subroutine t2(a1,a2,j)
      integer*2 a1,a2
      if (a1.ne.a2)call err(2001,j)
      end
      subroutine t3(a1,a2,j)
      integer*4 a1,a2
      if (a1.ne.a2)call err(2001,j)
      end
