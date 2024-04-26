      integer aa(20,10)

      do i=1,10
         call s0(aa(1,i))
      enddo
      write(6,*) aa
      end

      subroutine s0(aa)
      integer aa(*)
      do i=1,20
         aa(i)=i
      enddo
      end
