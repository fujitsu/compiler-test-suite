      program main
      call sub1
      call sub2
      call sub3
      call sub4
      end

      subroutine sub1
      real a(10,10),b(10)
      real x,y
      data a/100*0./,b/10*0./
      x=0
      y=500
      do i=1,10
         do j=1,5
            a(i,j)=x
            x=x+1
         enddo
      enddo
      do j=1,10
         b(j)=y
         y=y+1
      enddo
      print *,"*** test1 ***"
      print *,i,j
      print *,a
      print *,b
      end

      subroutine sub2
      real a(10,10),b(10)
      data a/100*0./,b/10*0./
      real x,y
      x=0
      y=500
      do i=1,10
         do j=1,5
            a(i,j)=x
            x=x+1
         enddo
      enddo
      do i=1,10
         b(i)=y
         y=y+1
      enddo
      print *,"*** test2 ***"
      print *,i,j
      print *,a
      print *,b
      end

      subroutine sub3
      real a(10),b(10,10)
      real x,y
      data a/10*0./,b/100*0./
      x=0
      y=500
      do i=1,10
         a(i)=x
         x=x+1
      enddo
      do i=1,10
         do j=1,5
            b(i,j)=y
            y=y+1
         enddo
      enddo
      print *,"*** test3 ***"
      print *,i,j
      print *,a
      print *,b
      end

      subroutine sub4
      real a(10),b(10,10)
      real x,y
      data a/10*0./,b/100*0./
      x=0
      y=500
      do j=1,10
         a(j)=x
         x=x+1
      enddo
      do i=1,10
         do j=1,5
            b(i,j)=y
            y=y+1
         enddo
      enddo
      print *,"*** test4 ***"
      print *,i,j
      print *,a
      print *,b
      end
