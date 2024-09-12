      call sub1
      end

      subroutine sub1
      real p(100),b(100),q(100)
      p=50;q=50
      b(100)=1
      do 13 ip=5,100
          i1= p(ip)+q(ip)
          p(ip)= b(i1)
   13 continue
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      p=50;q=50;b(90)=1
      do 14 ip=5,100
          i1= p(ip)+q(ip-4)-10
          p(ip)= b(i1)
   14 continue
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      p=50;q=50;b(80)=1
      do 15 ip=5,100
          i1= p(ip)+q(ip)-20
          if(ip.eq.99) goto 115
          p(ip)= b(i1)
   15 continue
  115 continue
      if(p(98).eq.1)print*,' ok '
      if(p(98).ne.1)print*,' ng '
      p=50;q=50;b(70)=1
      do 16 ip=5,100
          i1= p(ip)+abs(q(ip))-30
          p(ip)= b(i1)
   16 continue
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      p=50;q=50;b(60)=1
      do 17 ip=5,100
          i1= abs(p(ip)+abs(q(ip))-40)
          p(ip)= b(i1)
   17 continue
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      end subroutine sub1
