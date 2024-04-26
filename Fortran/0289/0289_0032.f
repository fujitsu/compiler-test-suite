      complex*16 cdans,cdcom,cddf9,cdta1(6,1,5,5)
      double precision ddim1(2),ddim2(2),ddf99(2)
      equivalence (cdans,ddim1(1)),(cdcom,ddim2(1))
      equivalence (cddf9,ddf99(1))
      cdta1(3,1,1,3)=(5.97126315d0,2.412561321d-2)
      call sub1(cdta1,cdans,1,5,6)
      cdcom=(5.97126315d0,2.412561321d-2)
      cddf9=cdans-cdcom
      do 00020 lq=1,2
      if (ddim2(lq).eq.0.0d0) go to 00010
      if (dabs(ddf99(lq))-dabs(ddim2(lq))*5.0d-16) 00020,00020,00030
00010 if (dabs(ddf99(lq))-5.0d-16) 00020,00030,00030
00020 continue
      print *,'*** ok ***'
      stop
00030 continue
      print *,'*** ng ***',cdans,cdcom
      end
      subroutine sub1(cdtb1,cdans,m,n,nn)
      complex * 16 cdtb1(nn,m,n,n),cdans
       i2=5
       call sub2(cdans,cdtb1(i2-2,i2-4,i2-4,i2-2))
       cdans=cdtb1(i2-2,i2-4,i2-4,i2-2)
       return
       end
      subroutine sub2(x,y)
      complex*16 x,y
      x=y
      return
      end
