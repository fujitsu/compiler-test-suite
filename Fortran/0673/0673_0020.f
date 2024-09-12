      complex   a(20),b(5),b1(10)
      real*8    c(20),d(5),d1(10)
      equivalence(b(1),b1(1))
      equivalence(d(1),d1(1))
      open(1,recl=40,form='formatted',access='direct')
      open(2,recl=40,form='formatted',access='direct')
      open(3,recl=40,form='formatted',access='direct')
      open(4,recl=40,form='formatted',access='direct')
      write(6,*) '*** psl and nopsl is equal ok ok ok ***'
      do 1 i=1,20
      a(i)=(1.0,1.0)*i
      c(i)=i
  1   continue
      write(1,rec=2,fmt=2) (a(j),j=1,5)
      write(2,rec=2,fmt=2)  a(1),a(2),a(3),a(4),a(5)
      write(1,rec=5,fmt=2) (a(j),j=1,10,2)
      write(2,rec=5,fmt=2)  a(1),a(3),a(5),a(7),a(9)
  2   format(10f4.1)
      read(1,rec=2,fmt=2) b
      write(6,*) b,'psl'
      read(2,rec=2,fmt=2) b
      write(6,*) b,'nopsl'
      read(1,rec=5,fmt=2) b
      write(6,*) b,'psl'
      read(2,rec=5,fmt=2) b
      write(6,*) b,'nopsl'
      write(1,rec=9,fmt=3) (a(j),j=1,5)
      write(2,rec=9,fmt=3)  a(1),a(2),a(3),a(4),a(5)
      write(1,rec=15,fmt=3) (a(j),j=1,10,2)
      write(2,rec=15,fmt=3)  a(1),a(3),a(5),a(7),a(9)
  3   format(2f4.1,f4.1,f4.1,4f4.1,2f4.1)
      read(1,rec=9,fmt=3) b
      write(6,*) b,'psl'
      read(2,rec=9,fmt=3) b
      write(6,*) b,'nopsl'
      read(1,rec=15,fmt=3) b
      write(6,*) b,'psl'
      read(2,rec=15,fmt=3) b
      write(6,*) b,'nopsl'
      write(1,rec=3,fmt=2)  a
      write(2,rec=3,fmt=2)  a(1),a(2),a(3),a(4),a(5)
      write(1,rec=6,fmt=2)  a
      write(2,rec=6,fmt=2)  a(1),a(2),a(3),a(4),a(5)
      read(1,rec=3,fmt=2) (b(j),j=1,5)
      write(6,*) b,'psl'
      read(2,rec=3,fmt=2) b
      write(6,*) b,'nopsl'
      read(1,rec=6,fmt=2) (b(j),j=1,10,2)
      write(6,*) (b(j),j=1,10,2),'psl'
      read(2,rec=6,fmt=2) b
      write(6,*) b,'nopsl'
      write(1,rec=10,fmt=3)  a
      write(2,rec=10,fmt=3)  a(1),a(2),a(3),a(4),a(5)
      write(1,rec=16,fmt=3)  a
      write(2,rec=16,fmt=3)  a(1),a(2),a(3),a(4),a(5)
      read(1,rec=10,fmt=3) (b(j),j=1,5)
      write(6,*) b,'psl'
      read(2,rec=10,fmt=3) b
      write(6,*) b,'nopsl'
      read(1,rec=16,fmt=3) (b(j),j=1,10,2)
      write(6,*) (b(j),j=1,10,2),'psl'
      read(2,rec=16,fmt=3) b
      write(6,*) b,'nopsl'
      write(3,rec=2,fmt=4) (c(j),j=1,5)
      write(4,rec=2,fmt=4)  c(1),c(2),c(3),c(4),c(5)
      write(3,rec=5,fmt=4) (c(j),j=1,10,2)
      write(4,rec=5,fmt=4)  c(1),c(3),c(5),c(7),c(9)
  4   format(5f4.1)
      read(3,rec=2,fmt=4) d
      write(6,*) d,'psl'
      read(4,rec=2,fmt=4) d
      write(6,*) d,'nopsl'
      read(3,rec=5,fmt=4) d
      write(6,*) d,'psl'
      read(4,rec=5,fmt=4) d
      write(6,*) d,'nopsl'
      write(3,rec=9,fmt=5) (c(j),j=1,5)
      write(4,rec=9,fmt=5)  c(1),c(2),c(3),c(4),c(5)
      write(3,rec=15,fmt=5) (c(j),j=1,10,2)
      write(4,rec=15,fmt=5)  c(1),c(3),c(5),c(7),c(9)
  5   format(f4.1,f4.1,3f4.1)
      read(3,rec=9,fmt=5) d
      write(6,*) d,'psl'
      read(4,rec=9,fmt=5) d
      write(6,*) d,'nopsl'
      read(3,rec=15,fmt=5) d
      write(6,*) d,'psl'
      read(4,rec=15,fmt=5) d
      write(6,*) d,'nopsl'
      write(3,rec=3,fmt=4)  c
      write(4,rec=3,fmt=4)  c(1),c(2),c(3),c(4),c(5)
      write(3,rec=6,fmt=4)  c
      write(4,rec=6,fmt=4)  c(1),c(2),c(3),c(4),c(5)
      read(3,rec=3,fmt=4) (d(j),j=1,5)
      write(6,*) d,'psl'
      read(4,rec=3,fmt=4) d
      write(6,*) d,'nopsl'
      read(3,rec=6,fmt=4) (d(j),j=1,10,2)
      write(6,*) (d(j),j=1,10,2),'psl'
      read(4,rec=6,fmt=4) d
      write(6,*) d,'nopsl'
      write(3,rec=10,fmt=5)  c
      write(4,rec=10,fmt=5)  c(1),c(2),c(3),c(4),c(5)
      write(3,rec=16,fmt=5)  c
      write(4,rec=16,fmt=5)  c(1),c(2),c(3),c(4),c(5)
      read(3,rec=10,fmt=5) (d(j),j=1,5)
      write(6,*) d,'psl'
      read(4,rec=10,fmt=5) d
      write(6,*) d,'nopsl'
      read(3,rec=16,fmt=5) (d(j),j=1,10,2)
      write(6,*) (d(j),j=1,10,2),'psl'
      read(4,rec=16,fmt=5) d
      write(6,*) d,'nopsl'
      end
