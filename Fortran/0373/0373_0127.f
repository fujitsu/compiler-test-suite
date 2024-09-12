      program main
      parameter(n=16)
      integer a(n)
      call sub(a)
      call ent(a)
      write(6,*) a
      end

      subroutine sub(a)
      parameter(n=16)
      integer a(n)
      do  10 i=1,n
         a(i)=2
 10   continue
      return

      entry ent(a)
      m = 1
      k = 16
      DO 20 i=m,k,1
         a(i)=a(i)*2
 20   continue
      return
      end


