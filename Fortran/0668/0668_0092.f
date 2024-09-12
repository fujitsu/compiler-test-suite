      program main
      real  ra(10),rb(10)/10*1.0/,rc/2./,rd/2./
      integer a(10),b(10)/10*2/,c/1/,d/2/
      do 1 i=1,10
        a(i)=b(i)/c
        b(i)=ishft(a(i),2)
        a(i)=not(c)
        a(i)=a(i)+1
   1    b(i)=mod(a(i),c)
      do 2 j=1,5
   2    a(j)=c-b(j)
      do 3 k=1,10
        b(k)=sign(c,a(k))
   3    a(k)=ishft(b(k),c+d)
      write(6,fmt='(10i5)')a,b
      do 4 l=1,10
        a(l)=max(b(l),c)
   4    b(l)=min(a(l),c)
      write(6,fmt='(10i5)') a,b
      do 5 m=1,10
        a(m)=ishft(b(m),2)
        b(m)=a(m)/c
   5    b(m)=mod(a(m),c)
      write(6,fmt='(10i5)') b
      do 10 i=1,10
        ra(i)=rb(i)/rc
        rb(i)=anint(ra(i))
        ra(i)=ra(i)+1
   10   rb(i)=mod(ra(i),rc)
      do 20 j=1,5
   20   ra(j)=rc-rb(j)
      do 30 k=1,10
        rc=sign(rb(k),ra(k))
   30   rb(k)=aint(ra(k))
      do 40 l=1,10
        ra(l)=ra(l)+1.2
        rb(l)=max(ra(l),rc)
   40   ra(l)=min(rb(l),rc)
      write(6,fmt='(5f10.5)') rb,rc
      do 50 m=1,10
        ra(m)=rb(m)/rd
   50   ra(m)=mod(rb(m),rd)
      write(6,fmt='(5f10.5)') ra
      stop
      end
