      subroutine sub(a,b,x,y)
      real a(10),b(10)
      character*3 x,y

!----- multi thread region ..begin----
         do i=1,10
            a(i)=i
         enddo
         x=y
         do j=1,10
            b(j)=j
         enddo
!----- multi thread region ..end----
         
      end

      program main
      real a(10),b(10)
      character*3 x,y
      y='abc'
      call sub(a,b,x,y)
      print *,a
      print *,b
      print *,x
      print *,y
      end
