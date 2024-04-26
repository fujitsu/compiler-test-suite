       program   main
       integer   i1,i2,i3,m1,m2,m3,k,l,num1,num2,en1
       integer   a2,iary,bary,ans,add,ave,ch,j,i,en2
       dimension iary(100),ans(100,100)
       dimension bary(100)
       a2=3
       i1=4
       i2=5
       i3=3
       do 30 k=1,100

       bary(k)=1
       iary(k)=2

30     continue
       en1=100-a2
       do 40 j=1,en1

       bary(a2+j)=bary(a2*5)*bary(i1)*24/i1/a2
       call sub2(bary(a2+j),bary(a2+j))

40     continue
       do 46 j=1,100
       do 46 i=1,100
        call sub1(i,ch)
        ans(j,i)=ch
46     continue
        add=0
        do 35 num1=1,100
        do 35 num2=1,100
35       add=add+ans(num1,num2)
        ave=add/2000
        if (ave.ne.10) then
      write(6,*) ave
      write(6,38)
38    format(1h,'** test is ng(ave)||| **')
        endif
       en2=(100-i2*a2)/a2
50     do 60 k=1,en2

       iary((i2+k)*a2)=iary(i1/i3)*mod(i1,i3)
       call sub1(iary((i2+k)*a2),iary((i2+k)+a2))

60     continue
       m1=0
       do 80 l=1,100
         if (bary(l).ne.1) then
           m1=m1+1
         endif
80     continue
       m2=0
       do 90 l=1,100
         if (iary(l).ne.2) then
           m2=m2+1
         endif
90     continue
      m3=0
      if(m1.ne.0) then
      write(6,*) m1
      write(6,100)
100   format(1h,'** test is ng(bary)||| **')
      m3=1
      endif
      if(m2.ne.0) then
      write(6,*) m2
      write(6,110)
110   format(1h,'** test is ng(iary)||| **')
      m3=1
      endif
      if (m3.eq.0) then
        write(6,*) '*** test is ok| ***'
       endif
       stop
       end
       subroutine sub1(pr1,pr2)
       integer pr1,pr2
       pr2=pr1/pr1*2
       end
       subroutine sub2(p1,p2)
       integer p1,p2
       p2=p1/p1
       end
