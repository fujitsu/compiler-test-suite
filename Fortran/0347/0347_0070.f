      dimension a(40),b(40),c(40),d(40)
      integer*4 aa(30),bb(30),cc(30)
      data a/40*3.0/,b/40*1.0/,c/40*2.0/,d/40*1.0/
      data aa/30*1.0/,bb/30*2.0/,cc/30*3.0/
      n = 2
      do 10 i=2,10
        a(2*i+3) = a(2*i+4) + d(i+1)
        b(i+10)= c(3*i+4) + 1.0
        c(3*i+2) = b(i) * 2.0
        aa(i+1) = bb(i*2) + cc(2*i+1)
        bb(3*i-1) = aa(2*i) + n
        cc(i+2) = aa(i+3) + cc(i*2)
        d(i+1) = a(2*i-3) + 2.0
 10   continue
      write(6,*) ' *** result *** '
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(2x,4(10f6.3,2x/))
      write(6,610) aa
      write(6,610) bb
      write(6,610) cc
 610  format(2x,3(10i4,2x/))
      stop
      end
