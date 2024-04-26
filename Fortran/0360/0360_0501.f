      call sub1
      call sub2
      call sub3
      call sub4

      write(6,*) ' ok '

      end

      subroutine sub1
      real x
      integer index
      real a(10),resv(4)/0,0,9,9/
      data a/0,1,2,3,4,5,6,7,8,9/

      index = 100
      x = a(1)
      do 10 i=1,10
         if(a(i).le.x) then
            x = a(i)
            index = i
         endif
 10   continue
      if (isub(x,index,resv(1),1).eq.1) stop 11

      index = 100
      x = a(1)
      do 20 i=1,10
         if(a(i).lt.x) then
            x = a(i)
            index = i
         endif
 20   continue
      if (isub(x,index,resv(2),100).eq.1) stop 12

      index = 100
      x = a(10)
      do 30 i=1,10
         if(a(i).ge.x) then
            x = a(i)
            index = i
         endif
 30   continue
      if (isub(x,index,resv(3),10).eq.1) stop 13

      index = 100
      x = a(10)
      do 40 i=1,10
         if(a(i).gt.x) then
            x = a(i)
            index = i
         endif
 40   continue
      if (isub(x,index,resv(4),100).eq.1) stop 14
      end

      subroutine sub2
      real x(1)
      integer index
      real a(10),resv(4)/0,0,9,9/
      data a/0,1,2,3,4,5,6,7,8,9/

      index = 100
      x(1) = a(1)
      do 10 i=1,10
         if(a(i).le.x(1)) then
            x(1) = a(i)
            index = i
         endif
 10   continue
      if (isub(x(1),index,resv(1),1).eq.1) stop 21

      index = 100
      x(1) = a(1)
      do 20 i=1,10
         if(a(i).lt.x(1)) then
            x(1) = a(i)
            index = i
         endif
 20   continue
      if (isub(x(1),index,resv(2),100).eq.1) stop 22

      index = 100
      x(1) = a(10)
      do 30 i=1,10
         if(a(i).ge.x(1)) then
            x(1) = a(i)
            index = i
         endif
 30   continue
      if (isub(x(1),index,resv(3),10).eq.1) stop 23

      index = 100
      x(1) = a(10)
      do 40 i=1,10
         if(a(i).gt.x(1)) then
            x(1) = a(i)
            index = i
         endif
 40   continue
      if (isub(x(1),index,resv(4),100).eq.1) stop 24
      end

      subroutine sub3
      real x
      integer index(1)
      real a(10),resv(4)/0,0,9,9/
      data a/0,1,2,3,4,5,6,7,8,9/

      index(1) = 100
      x = a(1)
      do 10 i=1,10
         if(a(i).le.x) then
            x = a(i)
            index(1) = i
         endif
 10   continue
      if (isub(x,index(1),resv(1),1).eq.1) stop 31

      index(1) = 100
      x = a(1)
      do 20 i=1,10
         if(a(i).lt.x) then
            x = a(i)
            index(1) = i
         endif
 20   continue
      if (isub(x,index(1),resv(2),100).eq.1) stop 32

      index(1) = 100
      x = a(10)
      do 30 i=1,10
         if(a(i).ge.x) then
            x = a(i)
            index(1) = i
         endif
 30   continue
      if (isub(x,index(1),resv(3),10).eq.1) stop 33

      index(1) = 100
      x = a(10)
      do 40 i=1,10
         if(a(i).gt.x) then
            x = a(i)
            index(1) = i
         endif
 40   continue
      if (isub(x,index(1),resv(4),100).eq.1) stop 34
      end

      subroutine sub4
      real x(1)
      integer index(1)
      real a(10),resv(4)/0,0,9,9/
      data a/0,1,2,3,4,5,6,7,8,9/

      index(1) = 100
      x(1) = a(1)
      do 10 i=1,10
         if(a(i).le.x(1)) then
            x(1) = a(i)
            index(1) = i
         endif
 10   continue
      if (isub(x(1),index(1),resv(1),1).eq.1) stop 41

      index(1) = 100
      x(1) = a(1)
      do 20 i=1,10
         if(a(i).lt.x(1)) then
            x(1) = a(i)
            index(1) = i
         endif
 20   continue
      if (isub(x(1),index(1),resv(2),100).eq.1) stop 42

      index(1) = 100
      x(1) = a(10)
      do 30 i=1,10
         if(a(i).ge.x(1)) then
            x(1) = a(i)
            index(1) = i
         endif
 30   continue
      if (isub(x(1),index(1),resv(3),10).eq.1) stop 43

      index(1) = 100
      x(1) = a(10)
      do 40 i=1,10
         if(a(i).gt.x(1)) then
            x(1) = a(i)
            index(1) = i
         endif
 40   continue
      if (isub(x(1),index(1),resv(4),100).eq.1) stop 44
      end

      integer function isub(calcv,calci,resv,resi)
      real calcv,resv
      integer calci,resi
      isub = 0

      if (calcv.ne.resv .or. calci.ne.resi) then
         write(6,*) "calc (value,index) = (",calcv,calci,")"
         write(6,*) "res  (value,index) = (",resv,resi,")"
         isub = 1
         return
      endif
      return
      end
