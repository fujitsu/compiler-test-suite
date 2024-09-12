      dimension an(50,50),bm(50,50),f(50)
      write(6,*) '          test start  '
      m=50
      n=50
      write(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=
     *1,n),(f(i),i=1,m)
      write(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=
     *1,n),(f(i),i=1,m)
      write(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=
     *1,n),(f(i),i=1,m)
      m=50
      n=8
      write(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=
     *1,n),(f(i),i=1,m)
      m=8
      n=1
      write(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=
     *1,n),(f(i),i=1,m)
      backspace 22
      backspace 22
      read(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=1
     *,n),(f(i),i=1,m)
      if (m.eq.50.and.n.eq.8) goto 111
      write(6,*)  '         test abnormal end '
      go to 222
  111 read(22) m,n,((an(i,j),i=1,m),j=1,m),         ((bm(i,j),i=1,m),j=1
     *,n),(f(i),i=1,m)
      if (m.eq.8.and.n.eq.1) goto 333
      write(6,*)  '         test abnormal end '
      go to 222
  333 write(6,*) '         test normal end '
      write(6,*) ' (but if  error output is ng ng ng) '
  222 stop
      end
