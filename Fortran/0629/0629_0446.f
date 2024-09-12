      subroutine sub(a,b,l,ll)
      parameter(n=100000)
      real,dimension(n)::a,b
      integer,dimension(n)::l,ll

      do i=1,n
         m=l(i)
         mm=ll(i)
         a(m)=a(m)+1.0
         b(mm)=b(mm)+1.0
      enddo

      end

      program main
      parameter(n=100000)
      real,dimension(n)::a,b
      integer,dimension(n)::l,ll

      do i=1,n
         l(i)=i
         ll(i)=i*2/n+1
         a(i)=1.0
      enddo
      b(1)=-1.0
      b(2)=-2.0
      b(3)=-3.0
      call sub(a,b,l,ll)
      print*,a(1),a(n),b(1),b(2),b(3)
      end
