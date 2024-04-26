
      real*8  r8a(10)/10*-5/,rr8/3/,calca(2),resa(2)
      real*4  r4a(10)/10*-5/,rr4/3/,calcb(2),resb(2)
      data resa/-37,-117/
      data resb/-37,-37/

      do i=1,8
         r8a(i)=r8a(10)
         rr4=rr4+r8a(10)
      enddo
      calca(1) = rr4

      do i=1,8
         r4a(i)=r4a(10)
         rr8=rr8+r4a(10)
      enddo
      calcb(1) = rr8

      do i=1,8
         r8a(i)=r8a(10)
         r4a(i)= r4a(9)
         rr4=rr4+r8a(10)+r4a(10)
      enddo
      calca(2) = rr4

      do i=1,8
         r4a(i)=r4a(10)
         r8a(i)= r8a(9)
         rr8=rr8+r4a(10)-r8a(10)
      enddo
      calcb(2) = rr8

      if (isub(calca,calcb,resa,resb) .eq. 1) stop 1

      resa(1)= -162
      resa(2)= -252
      resb(1)= -82
      resb(2)= -82

      do i=1,9
         r8a(i)=r8a(10)
         rr4=rr4+r8a(10)
      enddo
      calca(1) = rr4

      do i=1,9
         r4a(i)=r4a(10)
         rr8=rr8+r4a(10)
      enddo
      calcb(1) = rr8

      do i=1,9
         r8a(i)=r8a(10)
         r4a(i)= r4a(9)
         rr4=rr4+r8a(10)+r4a(10)
      enddo
      calca(2) = rr4

      do i=1,9
         r4a(i)=r4a(10)
         r8a(i)= r8a(9)
         rr8=rr8+r4a(10)-r8a(10)
      enddo
      calcb(2) = rr8

      if (isub(calca,calcb,resa,resb) .eq. 1) stop 2

      write(6,*) 'ok'
      end

      integer function isub(calcb,calca,resb,resa)
      real calca(2),resa(2)
      real*8 calcb(2),resb(2)

      isub = 0
      do i=1,2
      if (calca(i).ne.resa(i) .or. calcb(i).ne.resb(i)) then
         write(6,*) "calca = ",calca
         write(6,*) "resa  = ",resa
         write(6,*) "calcb = ",calcb
         write(6,*) "resb  = ",resb
         isub = 1
         return
      endif
      enddo
      return
      end      

