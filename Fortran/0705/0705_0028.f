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
      parameter (ap1=z'7f',ap2=z'ff')
      parameter (j1=7)             
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=7
      call t1( ibset(ap1,7)*ibset(ap1,7) ,ap2*ap2 ,1001)
      call t1( ibset(av1,7)*ibset(av1,7) ,av2*av2 ,1002)
      call t1( ibset(aa1(2),7)*ibset(aa1(2),7) ,aa2(2)*aa2(2),1003 )
      call t1( ibset(ap1,i1)*ibset(ap1,i1) ,ap2*ap2 ,1004)
      call t1( ibset(av1,i1)*ibset(av1,i1) ,av2*av2 ,1005)
      call t1( ibset(aa1(2),i1)*ibset(aa1(2),i1) ,aa2(2)*aa2(2),1006 )
      call t1( ibset(ap1,j1)*ibset(ap1,j1) ,ap2*ap2 ,1007)
      call t1( ibset(av1,j1)*ibset(av1,j1) ,av2*av2 ,1008)
      call t1( ibset(aa1(2),j1)*ibset(aa1(2),j1) ,aa2(2)*aa2(2),1009 )
      if ( ibset(ap1,7)*ibset(ap1,7).ne. ap2*ap2) call err(20,2001)
      if ( ibset(av1,7)*ibset(av1,7) .ne.av2*av2) call err(20,2002)
      if ( ibset(aa1(2),7)*ibset(aa1(2),7).ne.aa2(2)*aa2(2))
     1                                            call err(20,2003 )
      if ( ibset(ap1,i1)*ibset(ap1,i1) .ne.ap2*ap2)call err(20 ,2004)
      if ( ibset(av1,i1)*ibset(av1,i1) .ne.av2*av2)call err(20 ,2005)
      if ( ibset(aa1(2),i1)*ibset(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,2006 )
      if ( ibset(ap1,j1)*ibset(ap1,j1).ne. ap2*ap2) call err(20,2007)
      if ( ibset(av1,j1)*ibset(av1,j1) .ne.av2*av2) call err(20,2008)
      if ( ibset(aa1(2),j1)*ibset(aa1(2),j1) .ne.aa2(2)*aa2(2))
     1                                              call err(20,2009 )
      end
      subroutine s2
      implicit integer*2 (a)
      parameter (ap1=z'7fff',ap2=z'ffff')
      parameter (j1=15)            
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=15
      call t2( ibset(ap1,15)*ibset(ap1,15) ,ap2*ap2 ,11001)
      call t2( ibset(av1,15)*ibset(av1,15) ,av2*av2 ,11002)
      call t2( ibset(aa1(2),15)*ibset(aa1(2),15),aa2(2)*aa2(2),11003 )
      call t2( ibset(ap1,i1)*ibset(ap1,i1) ,ap2*ap2 ,11004)
      call t2( ibset(av1,i1)*ibset(av1,i1) ,av2*av2 ,11005)
      call t2( ibset(aa1(2),i1)*ibset(aa1(2),i1) ,aa2(2)*aa2(2),11006 )
      call t2( ibset(ap1,j1)*ibset(ap1,j1) ,ap2*ap2 ,11007)
      call t2( ibset(av1,j1)*ibset(av1,j1) ,av2*av2 ,11008)
      call t2( ibset(aa1(2),j1)*ibset(aa1(2),j1) ,aa2(2)*aa2(2),11009 )
      if ( ibset(ap1,15)*ibset(ap1,15).ne. ap2*ap2) call err(20,12001)
      if ( ibset(av1,15)*ibset(av1,15) .ne.av2*av2) call err(20,12002)
      if ( ibset(aa1(2),15)*ibset(aa1(2),15).ne.aa2(2)*aa2(2))
     1                                            call err(20,12003 )
      if ( ibset(ap1,i1)*ibset(ap1,i1) .ne.ap2*ap2)call err(20 ,12004)
      if ( ibset(av1,i1)*ibset(av1,i1) .ne.av2*av2)call err(20 ,12005)
      if ( ibset(aa1(2),i1)*ibset(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,12006 )
      if ( ibset(ap1,j1)*ibset(ap1,j1).ne. ap2*ap2) call err(20,12007)
      if ( ibset(av1,j1)*ibset(av1,j1) .ne.av2*av2) call err(20,12008)
      if ( ibset(aa1(2),j1)*ibset(aa1(2),j1) .ne.aa2(2)*aa2(2))
     1                                              call err(20,12009 )
      end
      subroutine s3
      implicit integer*4 (a)
      parameter (ap1=z'7fffffff',ap2=z'ffffffff')
      parameter (j1=31)             
      dimension aa1(2),aa2(2)
      av1=ap1
      av2=ap2
      aa1(2)=ap1
      aa2(2)=ap2
      i1=31
      call t3( ibset(ap1,31)*ibset(ap1,31) ,ap2*ap2 ,21001)
      call t3( ibset(av1,31)*ibset(av1,31) ,av2*av2 ,21002)
      call t3( ibset(aa1(2),31)*ibset(aa1(2),31) ,aa2(2)*aa2(2),21003 )
      call t3( ibset(ap1,i1)*ibset(ap1,i1) ,ap2*ap2 ,21004)
      call t3( ibset(av1,i1)*ibset(av1,i1) ,av2*av2 ,21005)
      call t3( ibset(aa1(2),i1)*ibset(aa1(2),i1) ,aa2(2)*aa2(2),21006 )
      call t3( ibset(ap1,j1)*ibset(ap1,j1) ,ap2*ap2 ,21007)
      call t3( ibset(av1,j1)*ibset(av1,j1) ,av2*av2 ,21008)
      call t3( ibset(aa1(2),j1)*ibset(aa1(2),j1) ,aa2(2)*aa2(2),21009 )
      if ( ibset(ap1,31)*ibset(ap1,31).ne. ap2*ap2) call err(20,22001)
      if ( ibset(av1,31)*ibset(av1,31) .ne.av2*av2) call err(20,22002)
      if ( ibset(aa1(2),31)*ibset(aa1(2),31).ne.aa2(2)*aa2(2))
     1                                            call err(20,22003 )
      if ( ibset(ap1,i1)*ibset(ap1,i1) .ne.ap2*ap2)call err(20 ,22004)
      if ( ibset(av1,i1)*ibset(av1,i1) .ne.av2*av2)call err(20 ,22005)
      if ( ibset(aa1(2),i1)*ibset(aa1(2),i1) .ne.aa2(2)*aa2(2))
     1                                           call err(20,22006 )
      if ( ibset(ap1,j1)*ibset(ap1,j1).ne. ap2*ap2) call err(20,22007)
      if ( ibset(av1,j1)*ibset(av1,j1) .ne.av2*av2) call err(20,22008)
      if ( ibset(aa1(2),j1)*ibset(aa1(2),j1) .ne.aa2(2)*aa2(2))
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
