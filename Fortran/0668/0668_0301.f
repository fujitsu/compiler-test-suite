          real*4     r1(2048),r2(2048),r3(2048),r4(2048),r5(2048)
          real*8     d1(2048),d2(2048),d3(2048),d4(2048),d5(2048)
          real*8     q1(2048),q2(2048),q3(2048),q4(2048),q5(2048)
          integer*4  i1(2048),i2(2048),i3(2048),i4(2048),i5(2048)
          logical*4  l1(2048),l2(2048),l3(2048),l4(2048),l5(2048)
          complex*8  c1(2048),c2(2048),c3(2048),c4(2048),c5(2048)
          complex*16  cd1(2048),cd2(2048),cd3(2048),cd4(2048),cd5(2048)
          complex*16 cq1(2048),cq2(2048),cq3(2048),cq4(2048),cq5(2048)
          integer*4 m(2048)
          do 1 j=1,10
          do 1 i=1,2048
            m(i)=100
            r1(i)=0.0
            r2(i)=1.0
            r3(i)=1.0
            r4(i)=1.0
            r5(i)=1.0
            d1(i)=0.0
          d2(i)=1.0
          d3(i)=1.0
          d4(i)=1.0
          d5(i)=1.0
          q1(i)=1.0
          q2(i)=1.0
          q3(i)=1.0
          q4(i)=1.0
          q5(i)=1.0
          i1(i)=1
          i2(i)=2
          i3(i)=3
          i4(i)=i
          i5(i)=j
          l1(i)= i.gt.1024
          l2(i)= i.le.1024
          l3(i)= l1(i).or.l2(i)
          l4(i)= l1(i).and.l2(i)
          if(mod(i,2).eq.0) then
            l5(i)=l4(i)
          else
            l5(i)=l3(i)
          endif
          c1(i)=(1.0,1.0)
          c2(i)=(1.0,0.5)
          c3(i)=(1.0,1.0)
          c4(i)=(1.0,1.0)
          c5(i)=(1.0,1.0)
          cd1(i)=(1.0,1.0)
          cd2(i)=(1.0,1.0)
          cd3(i)=(1.0,1.0)
          cd4(i)=(1.0,1.0)
          cd5(i)=(1.0,1.0)
          cq1(i)=(1.0,1.0)
          cq2(i)=(1.0,1.0)
          cq3(i)=(1.0,1.0)
          cq4(i)=(1.0,1.0)
          cq5(i)=(1.0,1.0)
    1     continue
          call arithm(m,r1,r2,r3,d1,d2,d3,i1,i2,i3,
     *            l1,l2,l3,c1,c2,c3,cd1,cd2,cd3)
          print *,'r2=',r2
          call arithm(m,r1,r2,r3,d1,d2,d3,i1,i2,i3,
     *            l1,l2,l3,c1,c2,c3,cd1,cd2,cd3)
          print *,'r2=',r2
          stop
          end

          subroutine arithm(m,r1,r2,r3,d1,d2,d3,i1,i2,i3,l1,l2,l3,
     *                  c1,c2,c3,cd1,cd2,cd3)
          real*4     r1(2048),r2(2048),r3(2048)
          real*8     d1(2048),d2(2048),d3(2048)
          integer*4 m(2048),i1(2048),i2(2048),i3(2048)
          logical*4  l1(2048),l2(2048),l3(2048)
          complex*8  c1(2048),c2(2048),c3(2048)
          complex*16 cd1(2048),cd2(2048),cd3(2048)

          do 90 i=1,1025
            if(r1(i).gt.10.0.and.m(i).le.10) goto 90
            r1(i)= r1(i)**i1(i)
            r2(i)= r1(i)+(r3(i)**i1(i))**i1(i+10)
   90     continue

          return
          end
