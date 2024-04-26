      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          dimension     i201(5),i202(5),i203(5),i204(5),i205(5),i206(5)
          dimension     i207(5),i208(5),i209(2),i210(5),i211(3),i212(2)
          dimension     i213(5),i214(3),i215(2),i216(5),i217(2),i218(2)
          dimension     i219(2),i220(2),i221(2),i222(2),i223(2),i224(2)
          dimension     i225(2),i226(2),i227(2),i228(2),i229(2),i230(2)
          dimension     i231(2),i232(2),i233(2),i234(2),i235(2),i236(2)
          dimension     i237(2),i238(2),i239(2),i240(2),i241(2),i242(2)
          dimension     i243(6)
          dimension    i301(3,2),i302(3,3),i303(3,3),i304(3,2),
     1   i305(2,2),i306(3,2),i307(3,2),i308(3,2),
     2   i309(3,2),i310(3,2),i311(4,2),i312(4,2),
     3   i313(4,2),i314(4,2),i315(4,2),i316(2,2),
     4   i317(2,2),i318(2,2),i319(2,2),i320(2,2),
     5   i321(2,2),i322(2,2),i323(2,2),i324(2,2),
     6   i325(2,2),i326(2,2),i327(2,2),i328(2,2),
     7   i329(2,2),i330(2,2),i331(2,2),i332(2,2),
     8   i333(2,2),i334(2,2),i335(2,2),i336(2,2),
     9    i337(2,2),i338(2,2),i339(2,2),i340(2,2)
          dimension    i401(3,3,3),i402(3,4,4),i403(3,4,3),i404(2,2,2),
     1   i405(2,2,2),i406(3,3,2),i407(2,3,2),i408(3,3,2),
     2   i409(2,2,3),i410(2,2,3),i411(2,3,2),i412(2,3,2),
     3   i413(2,3,2),i414(2,3,2),i415(2,3,2),i416(2,2,2),
     4   i417(2,2,2),i418(2,2,2),i419(2,2,2),i420(2,2,2),
     5   i421(2,2,2),i422(2,2,2),i423(2,2,2),i424(2,2,2),
     6   i425(2,2,2),i426(2,2,3),i427(2,2,2),i428(2,3,2),
     7   i429(2,2,2),i430(2,2,3),i431(2,2,2),i432(2,2,2),
     8   i433(2,3,2),i434(2,2,2),i435(2,2,2),i436(3,2,2),
     9    i437(2,2,2),i438(3,3,2),i439(2,2,2),i440(2,2,2),
     a    i441(3,3,3),i442(3,3,3),i443(3,3,3)
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 continue
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
c
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          i9ans1=0
          i201(1)=1
          i201(2)=2
          i202(1)=4
          i202(2)=8
          i203(1)=16
          i203(2)=32
          do  101  i=1,2
          do  101  j=1,2
          do  101  k=1,2
          i9ans1=i9ans1+i201(i)+i202(j)+i203(k)
  101     continue
          i9comp=252
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
          l=0
          l9ans1=.true.
          do  102  i=1,3,2
          do  102  j=1,2
          do  102  k=2,3
          l=l+1
          i301(i,j)=l
          i302(j,k)=l*2
          i303(k,i)=l*3
          l9ans1=l9ans1.and.i301(i,j)*i302(j,k)*i303(k,i).eq.6*l**3
  102     continue
          l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
          do  103  i=1,3
          i401(i,i,i)=i
          do  103  j=2,4
          i402(i,j,j)=j
          do  103  k=1,3,2
          i403(i,j,k)=k
          i9ans1=i9ans1+iabs(i401(i,i,i)-i402(i,j,j)-i403(i,j,k))
  103     continue
          i9comp=54
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
          do  104  i=1,5
          i201(i)=i+1
          i202(i)=i+6
          i203(i)=i+11
          i204(i)=i+16
          i205(i)=i+21
          i206(i)=i+26
          i207(i)=i+31
  104     i208(i)=i+36
          do  204  i=1,5,3
          do  204  j=2,3
          do  204  k=1,2
          write(1)  i201(i),i202(j),i203(k),i204(i),i205(j),i206(k),
     1                                              i207(i),i208(j)
          backspace 1
          read(1)   i209(k),i210(i),i211(j),i212(k),i213(i),i214(j),
     1                                              i215(k),i216(i)
  204     i9ans1 = i209(k)+i210(i)+i211(j)+i212(k)+i213(i)+i214(j)
     1                                      +i215(k)+i216(i)+i9ans1
          i9comp=1328
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
          do  105  i=1,2
          i301(i,i)=i
          i302(i,i)=i+1
          i303(i,i)=i+2
          i304(i,i)=i*2
          i305(i,i)=i*5
          do 105  j=2,3
          i306(j,i)=i301(i,i)
          i307(j,i)=i302(i,i)
          i308(j,i)=i303(i,i)
          i309(j,i)=i304(i,i)
          i310(j,i)=i305(i,i)
          do  105  k=1,5,3
          i311(k,1)=i301(i,i)-i306(j,i)
          i312(k,2)=i302(i,i)-i307(j,i)
          i313(k,1)=i303(i,i)-i308(j,i)
          i314(k,1)=i309(j,i)-i304(i,i)
          i315(k,1)=i310(j,i)-i305(i,i)
          i9ans1=i9ans1+i311(k,1)+i312(k,2)+i313(k,1)+i315(k,1)
     1                                                  +i314(k,1)
  105     continue
          i9comp=0
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 continue
23503 i9ans1=0
c
          l=0
          do  106  i=1,3,5
          i401(i,1,1)=l
          i402(i,1,i)=l
          i403(i,i,i)=l
          i404(i,i,1)=l
          i405(1,1,i)=l
          l=l+1
          do  106  j=2,3
          i406(j,j,i)=i401(i,1,1)
          i407(i,j,i)=i402(i,1,i)
          i408(j,j,1)=i403(i,i,i)
          i409(1,1,j)=i404(i,i,1)
          i410(i,i,j)=i405(1,1,i)
          do  106  k=1,2
          if(i406(j,j,i).eq.i401(i,1,1)) i411(k,j,i)=1
          if(i407(i,j,i).eq.i402(i,1,i)) i412(k,j,i)=1
          if(i408(j,j,1).eq.i403(i,i,i)) i413(k,j,i)=1
          if(i409(1,1,j).eq.i404(i,i,1)) i414(k,j,i)=1
          if(i410(i,i,j).eq.i405(1,1,i)) i415(k,j,i)=1
          l9ans1 = i411(k,j,i).eq.1.and.i412(k,j,i).eq.1
     1       .and.i413(k,j,i).eq.1.and.
     1       i414(k,j,i).eq.1.and.i415(k,j,i).eq.1
  106     continue
          l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
          do 107 i=1,2
          i201(1)=i
          i202(2)=i
          i203(1)=i
          i204(2)=i
          i205(1)=i
          i206(2)=i
          i207(1)=i
          i208(2)=i
          i209(1)=i
          i210(2)=i
          i211(1)=i
          i212(2)=i
          i213(1)=i
          i214(2)=i
          do 107 j=1,2,2
          i215(i)=i201(1)+1
          i216(i)=i202(2)+1
          i217(i)=i203(1)+1
          i218(i)=i204(2)+1
          i219(i)=i205(1)+1
          i220(i)=i206(2)+1
          i221(i)=i207(1)+1
          i222(i)=i208(2)+1
          i223(i)=i209(1)+1
          i224(i)=i210(2)+1
          i225(i)=i211(1)+1
          i226(i)=i212(2)+1
          i227(i)=i213(1)+1
          i228(i)=i214(2)+1
          do 107 k=1,1
          i229(i)=i215(i)+1
          i230(i)=i216(i)+1
          i231(i)=i217(i)+1
          i232(i)=i218(i)+1
          i233(i)=i219(i)+1
          i234(i)=i220(i)+1
          i235(i)=i221(i)+1
          i236(i)=i222(i)+1
          i237(i)=i223(i)+1
          i238(i)=i224(i)+1
          i239(i)=i225(i)+1
          i240(i)=i226(i)+1
          i241(i)=i227(i)+1
          i242(i)=i228(i)+1
          i243(i)=iabs(i229(i)+i230(i)+i231(i)+i232(i)+i233(i)+i234(i)
     1                +i235(i)+i236(i)+i237(i)+i238(i)+i239(i)+i240(i)
     2                +i241(i)+i242(i))
          i243(i+2)=iabs(i201(1)+i202(2)+i203(1)+i204(2)+i205(1)+i206(2)
     1                  -i207(1)-i208(2)-i209(1)-i210(2)-i211(1)-i212(2)
     2                  -i213(1)-i214(2))
          i243(i+4)=iabs(i215(i)+i216(i)+i217(i)+i218(i)+i219(i)+i220(i)
     1                  +i221(i)+i222(i)+i223(i)+i224(i)+i225(i)+i226(i)
     2                  +i227(i)+i228(i))
          i9ans1=i9ans1+iabs(i243(i+4)-i243(i)-i243(i+2))
  107     continue
          i9comp = 34
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 continue
23504 i9ans1=0
c
          rewind 1
          do  108  i=1,2
          i301(i,1) = i
          i302(i,1) = i
          i303(i,1) = i
          i304(i,1) = i
          i305(i,1) = i
          i306(i,1) = i
          i307(i,1) = i
          i308(i,1) = i
          i309(i,1)=i
          i310(i,1)=i
          i311(i,1)=i
          i312(i,1)=i
          i313(i,1)=i
          i314(i,1)=i
          i315(i,1)=i
          i316(i,1)=i
          i317(i,1)=i
          i318(i,1)=i
          i319(i,1)=i
          i320(i,1)=i
          i321(i,1)=i
          i322(i,1)=i
          i323(i,1)=i
          i324(i,1)=i
          i325(i,1)=i
          i326(i,1)=i
          i327(i,1)=i
          i328(i,1)=i
          i329(i,1)=i
          i330(i,1)=i
          i331(i,1)=i
          i332(i,1)=i
          i333(i,1)=i
          i334(i,1)=i
          i335(i,1)=i
          i336(i,1)=i
          i337(i,1)=i
          i338(i,1)=i
          i339(i,1)=i
          i340(i,1)=i
          do  108  j=1,2
          i301(i,j)=i301(i,1)+1
          i302(i,j)=i302(i,1)+1
          i303(i,j)=i303(i,1)+1
          i304(i,j)=i304(i,1)+1
          i305(i,j)=i305(i,1)+1
          i306(i,j)=i306(i,1)+1
          i307(i,j)=i307(i,1)+1
          i308(i,j)=i308(i,1)+1
          i309(i,j)=i309(i,1)+1
          i310(i,j)=i310(i,1)+1
          i311(i,j)=i311(i,1)+1
          i312(i,j)=i312(i,1)+1
          i313(i,j)=i313(i,1)+1
          i314(i,j)=i314(i,1)+1
          i315(i,j)=i315(i,1)+1
          i316(i,j)=i316(i,1)+1
          i317(i,j)=i317(i,1)+1
          i318(i,j)=i318(i,1)+1
          i319(i,j)=i319(i,1)+1
          i320(i,j)=i320(i,1)+1
          i321(i,j)=i321(i,1)+1
          i322(i,j)=i322(i,1)+1
          i323(i,j)=i323(i,1)+1
          i324(i,j)=i324(i,1)+1
          i325(i,j)=i325(i,1)+1
          i326(i,j)=i326(i,1)+1
          i327(i,j)=i327(i,1)+1
          i328(i,j)=i328(i,1)+1
          i329(i,j)=i329(i,1)+1
          i330(i,j)=i330(i,1)+1
          i331(i,j)=i331(i,1)+1
          i332(i,j)=i332(i,1)+1
          i333(i,j)=i333(i,1)+1
          i334(i,j)=i334(i,1)+1
          i335(i,j)=i335(i,1)+1
          i336(i,j)=i336(i,1)+1
          i337(i,j)=i337(i,1)+1
          i338(i,j)=i338(i,1)+1
          i339(i,j)=i339(i,1)+1
          i340(i,j)=i340(i,1)+1
          do  108  k=2,4,3
          write(1)  i301(i,j),i302(i,j),i303(i,j),i304(i,j),i305(i,j)
          write(1)  i306(i,j),i307(i,j),i308(i,j),i309(i,j),i310(i,j)
          write(1)  i311(i,j),i312(i,j),i313(i,j),i314(i,j),i315(i,j)
          write(1)  i316(i,j),i317(i,j),i318(i,j),i319(i,j),i320(i,j)
          write(1)  i321(i,j),i322(i,j),i323(i,j),i324(i,j),i325(i,j)
          write(1)  i326(i,j),i327(i,j),i328(i,j),i329(i,j),i330(i,j)
          write(1)  i331(i,j),i332(i,j),i333(i,j),i334(i,j),i335(i,j)
          write(1)  i336(i,j),i337(i,j),i338(i,j),i339(i,j),i340(i,j)
          rewind 1
          read(1)   i301(i,k),i302(i,k),i303(i,k),i304(i,k),i305(i,k)
          read(1)   i306(i,k),i307(i,k),i308(i,k),i309(i,k),i310(i,k)
          read(1)   i311(i,k),i312(i,k),i313(i,k),i314(i,k),i315(i,k)
          read(1)   i316(i,k),i317(i,k),i318(i,k),i319(i,k),i320(i,k)
          read(1)   i321(i,k),i322(i,k),i323(i,k),i324(i,k),i325(i,k)
          read(1)   i326(i,k),i327(i,k),i328(i,k),i329(i,k),i330(i,k)
          read(1)   i331(i,k),i332(i,k),i333(i,k),i334(i,k),i335(i,k)
          read(1)   i336(i,k),i337(i,k),i338(i,k),i339(i,k),i340(i,k)
          i9ans1=i301(i,k)+i302(i,k)+i303(i,k)+i304(i,k)+i9ans1
          i9ans1=i305(i,k)+i306(i,k)+i307(i,k)+i308(i,k)+i9ans1
          i9ans1=i309(i,k)+i310(i,k)+i311(i,k)+i312(i,k)+i9ans1
          i9ans1=i313(i,k)+i314(i,k)+i315(i,k)+i316(i,k)+i9ans1
          i9ans1=i317(i,k)+i318(i,k)+i319(i,k)+i320(i,k)+i9ans1
          i9ans1=i321(i,k)+i322(i,k)+i323(i,k)+i324(i,k)+i9ans1
          i9ans1=i325(i,k)+i326(i,k)+i327(i,k)+i328(i,k)+i9ans1
          i9ans1=i329(i,k)+i330(i,k)+i331(i,k)+i332(i,k)+i9ans1
          i9ans1=i333(i,k)+i334(i,k)+i335(i,k)+i336(i,k)+i9ans1
          i9ans1=i337(i,k)+i338(i,k)+i339(i,k)+i340(i,k)+i9ans1
          rewind 1
  108     continue
      i9comp=480
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 continue
23505 i9ans1=0
c
          do  109  i=1,2
          do  109  j=1,2
          do  109  k=1,2
          i401(i,j,k)=i
          i402(i,j,k)=j
          i403(i,j,k)=k
          i404(i,j,k)=i401(i,j,k)+i
          i405(i,j,k)=i402(i,j,k)+j
          i406(i,j,k)=i403(i,j,k)+k
          i407(i,j,k)=i404(i,j,k)+i401(i,j,k)
          i408(i,j,k)=i405(i,j,k)+i402(i,j,k)
          i409(i,j,k)=i406(i,j,k)+i403(i,j,k)
          i410(i,j,k)=j
          i411(i,j,k)=k
          i412(i,j,k)=i
          i413(i,j,k)=i410(i,j,k)+j
          i414(i,j,k)=i411(i,j,k)+k
          i415(i,j,k)=i412(i,j,k)+i
          i416(i,j,k)=i413(i,j,k)+i410(i,j,k)
          i417(i,j,k)=i414(i,j,k)+i411(i,j,k)
          i418(i,j,k)=i415(i,j,k)+i412(i,j,k)
          i419(i,j,k)=k
          i420(i,j,k)=i
          i421(i,j,k)=j
          i422(i,j,k)=i419(i,j,k)+k
          i423(i,j,k)=i420(i,j,k)+i
          i424(i,j,k)=i421(i,j,k)+j
          i425(i,j,k)=i422(i,j,k)+i419(i,j,k)
          i426(i,j,k)=i423(i,j,k)+i420(i,j,k)
          i427(i,j,k)=i424(i,j,k)+i421(i,j,k)
          i428(i,j,k)=i407(i,j,k)+i416(i,j,k)
          i429(i,j,k)=i408(i,j,k)+i417(i,j,k)
          i430(i,j,k)=i409(i,j,k)+i418(i,j,k)
          i431(i,j,k)=i428(i,j,k)+i425(i,j,k)
          i432(i,j,k)=i429(i,j,k)+i426(i,j,k)
          i433(i,j,k)=i430(i,j,k)+i427(i,j,k)
          i434(i,j,k)=i431(i,j,k)+i
          i435(i,j,k)=i432(i,j,k)+j
          i436(i,j,k)=i433(i,j,k)+k
          i437(i,j,k)=i434(i,j,k)+k
          i438(i,j,k)=i435(i,j,k)+i
          i439(i,j,k)=i436(i,j,k)+j
          i440(i,j,k)=i437(i,j,k)+j
          i441(i,j,k)=i438(i,j,k)+k
          i442(i,j,k)=i439(i,j,k)+i
          i443(i,j,k)=i440(i,j,k)+i441(i,j,k)+i442(i,j,k)
  109     continue
          i9ans1=i443(1,1,1)+i443(2,1,1)+i443(1,2,1)+i443(2,2,1)
     1          +i443(1,1,2)+i443(2,1,2)+i443(1,2,2)+i443(2,2,2)
          i9comp=432
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 continue
23506 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
