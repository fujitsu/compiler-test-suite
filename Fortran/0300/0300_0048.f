      COMPLEX*16 b(6,2)/12*0/,res(6,2)
      integer*8 i,k
      data res/(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),
     +         (1,2),(2,2),(3,2),(4,2),(5,2),(6,2)/

      do i=1,6
         do k=1,2
            b(i,k) = dcmplx(i,k)
         enddo
      enddo

      do i=1,6
         do k=1,2
            if (b(i,k).ne.res(i,k)) goto 10
         enddo
      enddo
      write(6,*) "## ok ##"
      goto 20
 10   write(6,*) "## ng ##"
      write(6,*) b
      write(6,*) res
 20   continue
      END
