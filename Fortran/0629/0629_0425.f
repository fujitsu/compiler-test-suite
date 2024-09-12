      program main
      call sub1
      call sub2
      call sub3
      end

      subroutine sub1
      real a(10),b(10)
      data a/10*100./,b/10*200./
      do i=2,10
         a(i)=i
      enddo
      do j=5,10
         b(j)=j
      enddo
      print *,"*** initial var check"
      print *,i,j
      print *,a
      print *,b
      end

      subroutine sub2
      real a(10),b(10)
      data a/10*100./,b/10*200./
      do i=1,8
         a(i)=i
      enddo
      do j=1,9
         b(j)=j
      enddo
      print *,"*** finish var check"
      print *,i,j
      print *,a
      print *,b
      end

      subroutine sub3
      real a(10),b(10)
      data a/10*100./,b/10*200./
      do i=1,10,2
         a(i)=i
      enddo
      do j=1,10,3
         b(j)=j
      enddo
      print *,"*** incriment var check"
      print *,i,j
      print *,a
      print *,b
      end
