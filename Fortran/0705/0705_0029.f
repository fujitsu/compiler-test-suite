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
      parameter (ap1=z'82',ap2=z'02')
      parameter (j1=7)             
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=7
      call t1( ibclr(ap1,7)*ibclr(ap1,7) ,ap2*ap2 ,1001)
      call t1( ibclr(av1,7)*ibclr(av1,7) ,av2*av2 ,1002)
      call t1( ibclr(aa1(2),7)*ibclr(aa1(2),7) ,aa2(2)*aa2(2),1003 )
      call t1( ibclr(ap1,i1)*ibclr(ap1,i1) ,ap2*ap2 ,1004)
      call t1( ibclr(av1,i1)*ibclr(av1,i1) ,av2*av2 ,1005)
      call t1( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) ,aa2(2)*aa2(2),1006 )
      call t1( ibclr(ap1,j1)*ibclr(ap1,j1) ,ap2*ap2 ,1007)
      call t1( ibclr(av1,j1)*ibclr(av1,j1) ,av2*av2 ,1008)
      call t1( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) ,aa2(2)*aa2(2),1009 )
      if ( ibclr(ap1,7)*ibclr(ap1,7).ne. ap2*ap2) call err(20,2001)
      if ( ibclr(av1,7)*ibclr(av1,7) .ne.av2*av2) call err(20,2002)
      if ( ibclr(aa1(2),7)*ibclr(aa1(2),7).ne.aa2(2)*aa2(2))
     1                                            call err(20,2003 )
      if ( ibclr(ap1,i1)*ibclr(ap1,i1) .ne.ap2*ap2)call err(20 ,2004)
      if ( ibclr(av1,i1)*ibclr(av1,i1) .ne.av2*av2)call err(20 ,2005)
      if ( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,2006 )
      if ( ibclr(ap1,j1)*ibclr(ap1,j1).ne. ap2*ap2) call err(20,2007)
      if ( ibclr(av1,j1)*ibclr(av1,j1) .ne.av2*av2) call err(20,2008)
      if ( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) .ne.aa2(2)*aa2(2))
     1                                              call err(20,2009 )
      end
      subroutine s2
      implicit integer*2 (a)
      parameter (ap1=z'8002',ap2=z'0002')
      parameter (j1=15)            
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=15
      call t2( ibclr(ap1,15)*ibclr(ap1,15) ,ap2*ap2 ,11001)
      call t2( ibclr(av1,15)*ibclr(av1,15) ,av2*av2 ,11002)
      call t2( ibclr(aa1(2),15)*ibclr(aa1(2),15),aa2(2)*aa2(2),11003 )
      call t2( ibclr(ap1,i1)*ibclr(ap1,i1) ,ap2*ap2 ,11004)
      call t2( ibclr(av1,i1)*ibclr(av1,i1) ,av2*av2 ,11005)
      call t2( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) ,aa2(2)*aa2(2),11006 )
      call t2( ibclr(ap1,j1)*ibclr(ap1,j1) ,ap2*ap2 ,11007)
      call t2( ibclr(av1,j1)*ibclr(av1,j1) ,av2*av2 ,11008)
      call t2( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) ,aa2(2)*aa2(2),11009 )
      if ( ibclr(ap1,15)*ibclr(ap1,15).ne. ap2*ap2) call err(20,12001)
      if ( ibclr(av1,15)*ibclr(av1,15) .ne.av2*av2) call err(20,12002)
      if ( ibclr(aa1(2),15)*ibclr(aa1(2),15).ne.aa2(2)*aa2(2))
     1                                            call err(20,12003 )
      if ( ibclr(ap1,i1)*ibclr(ap1,i1) .ne.ap2*ap2)call err(20 ,12004)
      if ( ibclr(av1,i1)*ibclr(av1,i1) .ne.av2*av2)call err(20 ,12005)
      if ( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,12006 )
      if ( ibclr(ap1,j1)*ibclr(ap1,j1).ne. ap2*ap2) call err(20,12007)
      if ( ibclr(av1,j1)*ibclr(av1,j1) .ne.av2*av2) call err(20,12008)
      if ( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) .ne.aa2(2)*aa2(2))
     1                                              call err(20,12009 )
      end
      subroutine s3
      implicit integer*4 (a)
      parameter (ap1=z'80000002',ap2=z'00000002')
      parameter (j1=31)             
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=31
      call t3( ibclr(ap1,31)*ibclr(ap1,31) ,ap2*ap2 ,21001)
      call t3( ibclr(av1,31)*ibclr(av1,31) ,av2*av2 ,21002)
      call t3( ibclr(aa1(2),31)*ibclr(aa1(2),31) ,aa2(2)*aa2(2),21003 )
      call t3( ibclr(ap1,i1)*ibclr(ap1,i1) ,ap2*ap2 ,21004)
      call t3( ibclr(av1,i1)*ibclr(av1,i1) ,av2*av2 ,21005)
      call t3( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) ,aa2(2)*aa2(2),21006 )
      call t3( ibclr(ap1,j1)*ibclr(ap1,j1) ,ap2*ap2 ,21007)
      call t3( ibclr(av1,j1)*ibclr(av1,j1) ,av2*av2 ,21008)
      call t3( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) ,aa2(2)*aa2(2),21009 )
      if ( ibclr(ap1,31)*ibclr(ap1,31).ne. ap2*ap2) call err(20,22001)
      if ( ibclr(av1,31)*ibclr(av1,31) .ne.av2*av2) call err(20,22002)
      if ( ibclr(aa1(2),31)*ibclr(aa1(2),31).ne.aa2(2)*aa2(2))
     1                                            call err(20,22003 )
      if ( ibclr(ap1,i1)*ibclr(ap1,i1) .ne.ap2*ap2)call err(20 ,22004)
      if ( ibclr(av1,i1)*ibclr(av1,i1) .ne.av2*av2)call err(20 ,22005)
      if ( ibclr(aa1(2),i1)*ibclr(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,22006 )
      if ( ibclr(ap1,j1)*ibclr(ap1,j1).ne. ap2*ap2) call err(20,22007)
      if ( ibclr(av1,j1)*ibclr(av1,j1) .ne.av2*av2) call err(20,22008)
      if ( ibclr(aa1(2),j1)*ibclr(aa1(2),j1) .ne.aa2(2)*aa2(2))
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
