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
      parameter (ap0=z'fe',ap1=z'ff',ap2=z'fe')
      dimension aa0(2),aa1(2),aa2(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t1( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,1001)
      call t1( and(av0,av1)*and(av0,av1) ,av2*av2 ,1002)
      call t1( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1003 )
      call t1( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,1004)
      call t1( and(av0,av1)*and(av0,av1) ,av2*av2 ,1005)
      call t1( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1006 )
      call t1( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,1007)
      call t1( and(av0,av1)*and(av0,av1) ,av2*av2 ,1008)
      call t1( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),1009 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,2001)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,2002)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,2003 )
      if ( and(ap0,ap1)*and(ap0,ap1) .ne.ap2*ap2)call err(20 ,2004)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2)call err(20 ,2005)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,2006 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,2007)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,2008)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                              call err(20,2009 )
      end
      subroutine s2
      implicit integer*2 (a)
      parameter (ap0=z'fffe',ap1=z'ffff',ap2=z'fffe')
      dimension aa1(2),aa2(2),aa0(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t2( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,11001)
      call t2( and(av0,av1)*and(av0,av1) ,av2*av2 ,11002)
      call t2( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11003 )
      call t2( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,11004)
      call t2( and(av0,av1)*and(av0,av1) ,av2*av2 ,11005)
      call t2( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11006 )
      call t2( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,11007)
      call t2( and(av0,av1)*and(av0,av1) ,av2*av2 ,11008)
      call t2( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),11009 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,12001)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,12002)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,12003 )
      if ( and(ap0,ap1)*and(ap0,ap1) .ne.ap2*ap2)call err(20 ,12004)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2)call err(20 ,12005)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,12006 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,12007)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,12008)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                              call err(20,12009 )
      end
      subroutine s3
      implicit integer*4 (a)
      parameter (ap0=z'fffffffe',ap1=z'ffffffff',ap2=z'fffffffe')
      dimension aa1(2),aa2(2),aa0(2)
      av0=ap0
      av1=ap1
      av2=ap2
      aa0(2)=ap0
      aa1(2)=ap1
      aa2(2)=ap2
      call t3( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,21001)
      call t3( and(av0,av1)*and(av0,av1) ,av2*av2 ,21002)
      call t3( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1 aa2(2)*aa2(2),21003 )
      call t3( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,21004)
      call t3( and(av0,av1)*and(av0,av1) ,av2*av2 ,21005)
      call t3( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),21006 )
      call t3( and(ap0,ap1)*and(ap0,ap1) ,ap2*ap2 ,21007)
      call t3( and(av0,av1)*and(av0,av1) ,av2*av2 ,21008)
      call t3( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) ,
     1  aa2(2)*aa2(2),21009 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,22001)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,22002)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)).ne.aa2(2)*aa2(2))
     1                                            call err(20,22003 )
      if ( and(ap0,ap1)*and(ap0,ap1) .ne.ap2*ap2)call err(20 ,22004)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2)call err(20 ,22005)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
     1                                           call err(20,22006 )
      if ( and(ap0,ap1)*and(ap0,ap1).ne. ap2*ap2) call err(20,22007)
      if ( and(av0,av1)*and(av0,av1) .ne.av2*av2) call err(20,22008)
      if ( and(aa0(2),aa1(2))*and(aa0(2),aa1(2)) .ne.aa2(2)*aa2(2))
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
