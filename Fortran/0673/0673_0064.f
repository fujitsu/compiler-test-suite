          integer     av1,av2,a(15,5),b(20,5),c(20,5)
          character*4 n,cmp(2)
          write(6,200)
          do 20 j=1,5
               do 10 i=1,15
                    a(i,j)=i*99+j*22
   10          continue
   20     continue
      do 999 item=1,2
      if (item.eq.1) then
           call output
           print *,' *** item = 1 : old file ***'
      else
           close(2,status='delete')
           print *,' *** item = 2 : new file ***'
      endif
          open(1,access='direct',form='formatted',recl=80)
          open(2,file='ioct144.f02',access='direct',form='formatted',
     1    recl=80)
          av1=1
          av2=1
          do 30 j=1,5
               write(1,100,rec=av1) (a(i,j),i=1,15)
               inquire(1,nextrec=av1)
               write(2,100,rec=av2) (a(i,j),i=1,15)
               inquire(1,nextrec=av2)
   30     continue
          av1=1
          av2=1
          do 40 j=1,5
               read(1,150,rec=av1) (b(i,j),i=1,20)
               inquire(1,nextrec=av1)
               read(2,150,rec=av2) (c(i,j),i=1,20)
               inquire(1,nextrec=av2)
   40     continue
          data n/'    '/
          do 70 j=1,5
               do 50 i=1,15
                    if(.not.(a(i,j).eq.b(i,j).and.
     *                       a(i,j).eq.c(i,j))) go to 80
   50          continue
               do 60 i=16,20
                    write(cmp(1),55) b(i,j)
                    write(cmp(2),55) c(i,j)
                    if(.not.(n.eq.cmp(1).and.
     *                       n.eq.cmp(2))) go to 80
   60          continue
   70     continue
          write(6,300)
          go to 999
   80     write(6,400)
   55     format(a4)
  100     format(15i4)
  150     format(15i4,5a4)
  200     format('                  test ... h0000130'//)
  300     format('        h0000130 (ok)'//
     *           ' end run unit')
  400     format('        h0000130 (ng)'//
     *           ' end run unit')
  999 continue
          end
      subroutine output
          character*4 j
          dimension  j(20)
          data j/20*'    '/
          open(2,file='ioct144.f01',access='direct',form='formatted',
     1    recl=80)
          do 10 k=1,14
          i=k
              write(2,20,rec=i) j
   10 continue
   20 format(20a4)
          close(2,status='keep')
          return
          end
