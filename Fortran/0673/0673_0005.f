      real*4 a(10,10),b1(10,10),b2(10,10),b3(10,10),b4(10,10)
      icnt=1
      ll=1
      n1=5
      n2=2
      do 10 k=1,10
      do 10 l=1,10
      a(k,l)=ll
      b1(k,l)=ll*10
      b2(k,l)=ll*10
      b3(k,l)=ll*10
      b4(k,l)=ll*10
      ll=ll+1
 10   continue
 15   continue
      do 20 kk=2,5
      write(10,1) kk,(a(kk,j),j=n1,n2)
  1   format(5x,i5,2x,16f7.3)
      write(20,*) kk,(a(kk,j),j=n1,n2)
      write(30) kk,(a(kk,j),j=n1,n2)
       rewind 10
       rewind 20
       rewind 30
      read(10,1) kkk1,(b1(kk,j),j=n1,n2)
      read(20,*) kkk2,(b2(kk,j),j=n1,n2)
      read(30) kkk3,(b3(kk,j),j=n1,n2)
      if(kkk1.ne.kk) goto 100
      if(kkk2.ne.kk) goto 100
      if(kkk3.ne.kk) goto 100
      do 30 j1=1,10
      do 30 j2=1,10
      if(b1(j1,j2).ne.b4(j1,j2)) goto 100
      if(b2(j1,j2).ne.b4(j1,j2)) goto 100
      if(b3(j1,j2).ne.b4(j1,j2)) goto 100
 30   continue
      rewind 10
      rewind 20
      rewind 30
 20   continue
      if(icnt.eq.2) goto 40
      write(6,200)
      goto 50
 40   write(6,400)
 50   continue
      write(6,210)
      goto 999
 100  continue
      if(icnt.eq.2) goto 60
      write(6,220)
      goto 999
 60   continue
      write(6,410)
 999  continue
      if(icnt.eq.2) goto 888
      icnt=icnt+1
      n1=2
      n2=1
      rewind 10
      rewind 20
      rewind 30
      goto 15
 888  continue
      write(6,300)
      stop
 200  format('  ** psl test ok(repeat count < 0) **')
 210  format('  ** formated unformated listdirect all ok **')
 220  format('  ** psl test ng(repeat count < 0) **')
 400  format('  ** psl test ok(repeat count = 0) **')
 410  format('  ** psl test ng(repeat count = 0) **')
 300  format('  ** test program pc47993          **')
      end
