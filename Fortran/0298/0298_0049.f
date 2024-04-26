      integer a1(10),a2(10),a3(10)
      integer b1(10),b2(10),b3(10)
      integer c1(10),c2(10),c3(10)
      logical l1(10),l2(10),l3(10),l4(10),l5(10)
      data a1/10*1/,a2/10*0/,a3/10*3/
      data b1/1,2,3,1,2,3,1,2,3,1/
      data b2/10*-2/
      data b3/10*5/
      data c1/3,4,5,1,2,3,6,7,8,9/
      data c2/2,4,6,8,10,1,3,5,7,9/
      data c3/0,1,0,0,1,1,1,1,0,1/
      do i=1,10
        l1(i)=c1(i).gt.c3(i)
        l2(i)=c1(i).ge.c2(i)
        l3(i)=a3(i).lt.c1(i)
        l4(i)=a1(i).le.c3(i)
        l5(i)=b2(i).ne.b3(i)
      enddo
      print *,'l1 = ',l1
      print *,'l2 = ',l2
      print *,'l3 = ',l3
      print *,'l4 = ',l4
      print *,'l5 = ',l5
      do i=1,10
        if(a1(i).gt.a2(i)) then
          l1(i)=l2(i).and.l3(i)
        endif
        if(a1(i).eq.c3(i)) then
          l2(i)=l3(i).or.l4(i)
        endif
        if(.not.l4(i)) then
          l3(i)=l1(i).eqv.l2(i)
        endif
        if(b1(i).ge.b2(i) .neqv. l1(i)) then
          l4(i)=(b1(i)+b2(i)).le.b3(i)
        endif
      enddo
      print *,'l1 = ',l1
      print *,'l2 = ',l2
      print *,'l3 = ',l3
      print *,'l4 = ',l4
      end

