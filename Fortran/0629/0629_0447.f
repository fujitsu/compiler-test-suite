      subroutine sub(aa,bb,al,ll)
      parameter(n=100000)
      real,dimension(n)::aa,bb
      integer,dimension(n)::al,ll

      do i=1,n
         m=al(i)
         mm=ll(i)
         aa(m)=aa(m)+1.0
         bb(mm)=bb(mm)+1.0
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
