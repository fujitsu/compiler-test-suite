      program main
      real  ra(10),rb(10)/10*1.0/,rc(10)/10*2/
      integer a(10),b(10)/10*2/,c(10)/10*1/,d/2/
      logical l1(10),l2(10)
      do 1 i=1,10
        a(i)=b(i)/c(i)
        b(i)=ishft(a(i),d)
        c(i)=not(b(i))
        a(i)=a(i)+1
   1    c(i)=mod(a(i),b(i))
      do 2 j=1,5
   2    a(j)=c(j)-b(j)
      do 3 k=1,10
        b(k)=sign(c(k),a(k))
        l1(k)=b(k).ge.c(k)
        l2(k)=.not.l1(k)
        if(l2(k)) then
        a(k)=max(b(k),c(k))
        else
        a(k)=min(b(k),c(k))
        endif
   3    b(k)=ishft(a(k),2)
      write(6,fmt='(10i5)') b
      k = k - 1
      do 4 m=1,10
        b(m)=a(k)/c(m)
        b(m)=mod(a(m),c(m))
   4    c(m)=ishft(b(m),-2)
      write(6,fmt='(10i5)') a,b,c
      do 10 i=1,10
        ra(i)=rb(i)/rc(i)
        rb(i)=anint(ra(i))
        ra(i)=ra(i)+1
   10   rc(i)=mod(ra(i),rb(i))
      do 20 j=1,5
   20   ra(j)=rc(j)-rb(j)
      do 30 k=1,10
        rc(k)=sign(rb(k),ra(k))
   30   rb(k)=aint(ra(k))
      do 40 l=1,10
        ra(l)=ra(l)+1.2
        rb(l)=max(ra(l),rc(l))
   40   ra(l)=min(rb(l),rc(l))
      write(6,fmt='(5f10.5)') ra,rb,rc
      do 50 m=1,10
        rc(m)=ra(m)/rb(m)
   50   rc(m)=mod(ra(m),rb(m))
      write(6,fmt='(5f10.5)') rc
      stop
      end
