      program main
      call sub1a
      call sub1b
      call sub2
      call sub3
      call sub4
      end

      subroutine sub1a
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      do i=1,10
         a(i)=i
      enddo
      i=2
      do i=1,10
         b(i)=i
      enddo
      print *,"*** contorol var check"
      print *,a
      print *,b
      print *,i
      end

      subroutine sub1b
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      do i=1,10
         a(i)=i
      enddo
      j=2
      do j=1,10
         b(j)=j
      enddo
      print *,"*** contorol var check"
      print *,a
      print *,b
      print *,i,j
      end

      subroutine sub2
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      k=1
      do i=k,10
         a(i)=i
      enddo
      k=2
      do i=k,10
         b(i)=i
      enddo
      print *,"*** initial var check"
      print *,a
      print *,b
      print *,i,k
      end

      subroutine sub3
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      k=9
      do i=1,k
         a(i)=i
      enddo
      k=10
      do i=1,k
         b(i)=i
      enddo
      print *,"*** finish var check"
      print *,a
      print *,b
      print *,i,k
      end

      subroutine sub4
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      k=1
      do i=1,10,k
         a(i)=i
      enddo
      k=2
      do i=1,10,k
         b(i)=i
      enddo
      print *,"*** incriment var check"
      print *,a
      print *,b
      print *,i,k
      end
