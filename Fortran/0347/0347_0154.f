      real*8    a(40),b(40),c(40),d(40)
      data    it1/3/,it2/15/
      data    a/40*2.3d0/,b/40*3.2d0/,c/40*1.2d0/,d/40*3.4d0/
      do 10 i=2,it2
        a(i+it2) = b(i) + c(i*2) - d(2*i)
        b(i+it2) = a(i+1) * c(i+it2+3) + d(2*i+1)
        c(i+2) = a(i) + b(i+2) / 2.0
        d(i+it2-13) = c(i) + b(i) + a(i)
 10   continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=3,20)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=3,20)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=3,20)
      write(6,*) ' **  d result value  ** '
      write(6,*) (d(i),i=3,20)
      do 20 j=it1,13,2
       a(j+it1) = b(j+it1) + c(2*j+it1)
       b(j) = c(j+it1+1) + d(j+it1)
       c(j+it1) = d(j+15) * a(27)
       d(j) = a(j-1) + b(j+it2-14)
 20   continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=3,20)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=3,20)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=3,20)
      write(6,*) ' **  d result value  ** '
      write(6,*) (d(i),i=3,20)
      stop
      end
