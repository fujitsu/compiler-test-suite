      program main
      integer*4  ia(6),ib(6),ic(6),id
      real*4     r4a(6),r4b(6),r4c(6),r4d
      real*8     da(6),db(6),dc(6),dd
      complex*8  ca(6),cb(6),cc(6),cd
      complex*16 cda(6),cdb(6),cdc(6),cdd
      data       ib/6*1/,ic/6*2/,id/3/
      data       r4b/6*0.2/,r4c/6*0.2/,r4d/2./
      data       db/6*0.2/,dc/6*0.2/,dd/2./
      data       cb/6*(0.2,0.2)/,cc/6*(0.2,0.2)/,cd/(1.0,0.2)/
      data       cdb/6*(0.2,0.2)/,cdc/6*(0.2,0.2)/,cdd/(1.0,0.2)/
      do    6 i=1,6
          ia(i)=ib(i)**ic(i)
          ib(i)=ic(i)**id
          ic(i)=id**ia(i)
    6 continue
            write (6,*) 'a: ',ia
            write (6,*) 'b: ',ib
            write (6,*) 'c: ',ic
      do    7 i=1,6
          r4a(i)=r4b(i)**ia(i)
          r4b(i)=r4b(i)**id
          r4c(i)=r4d**ib(i)
    7 continue
            write (6,fmt='(1a8,6f10.5)') 'a:',r4a
            write (6,fmt='(1a8,6f10.5)') 'b:',r4b
            write (6,fmt='(1a8,6f10.5)') 'c:',r4c
      do    8 i=1,6
          da(i)=db(i)**ia(i)
          db(i)=db(i)**id
          dc(i)=dd**ic(i)
    8 continue
            write (6,fmt='(1a8,6f12.7)') 'a:',da
            write (6,fmt='(1a8,6f12.7)') 'b:',db
            write (6,fmt='(1a8,6f12.7)') 'c:',dc
      do   12 i=1,6
          ca(i)=cb(i)**ic(i)
          cb(i)=cb(i)**id
          cc(i)=cd**ib(i)
   12 continue
            write (6,fmt='(1a9,/,3(2f10.5))') 'a: ',ca
            write (6,fmt='(1a9,/,3(2f10.5))') 'b: ',cb
            write (6,fmt='(1a9,/,3(2f10.5))') 'c: ',cc
      do   13 i=1,6
          cda(i)=cdb(i)**ic(i)
          cdb(i)=cdc(i)**id
          cdc(i)=cdd**ib(i)
   13 continue
            write (6,fmt='(1a9,/,3(2f12.7))') 'a: ',cda
            write (6,fmt='(1a9,/,3(2f12.7))') 'b: ',cdb
            write (6,fmt='(1a9,/,3(2f12.7))') 'c: ',cdc
      do   16 i=1,6
          r4a(i)=r4b(i)**r4c(i)
          r4b(i)=r4a(i)**r4d
          r4c(i)=r4d**r4b(i)
   16 continue
            write (6,fmt='(1a8,6f10.5)') 'a:',r4a
            write (6,fmt='(1a8,6f10.5)') 'b:',r4b
            write (6,fmt='(1a8,6f10.5)') 'c:',r4c
      do   17 i=1,6
          da(i)=db(i)**dc(i)
          db(i)=da(i)**dd
          dc(i)=dd**db(i)
   17 continue
            write (6,fmt='(1a8,6f12.7)') 'a:',da
            write (6,fmt='(1a8,6f12.7)') 'b:',db
            write (6,fmt='(1a8,6f12.7)') 'c:',dc
      do   18 i=1,6
          ca(i)=cb(i)**cc(i)
          cb(i)=ca(i)**cd
          cc(i)=cd**ca(i)
   18 continue
            write (6,fmt='(1a8,/,3(2f10.5))') 'a:',ca
            write (6,fmt='(1a8,/,3(2f10.5))') 'b:',cb
            write (6,fmt='(1a8,/,3(2f10.5))') 'c:',cc
      do   19 i=1,6
          cda(i)=cdb(i)**cdc(i)
          cdb(i)=cda(i)**cdd
          cdc(i)=cdd**cda(i)
   19 continue
            write (6,fmt='(1a8,/,3(2f12.7))') 'a:',cda
            write (6,fmt='(1a8,/,3(2f12.7))') 'b:',cdb
            write (6,fmt='(1a8,/,3(2f12.7))') 'c:',cdc
      stop
      end
