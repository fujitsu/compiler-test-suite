      parameter(n=20)
      real * 8 a(n),b(n),c(n)
      data a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data c/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
!
      call sub(a,b,c,n,5)
      write(6,*) ' end '
      stop
      end
      subroutine sub(a,b,c,n,mm)
      real * 8 a(n),b(n),c(n)
      integer mm
      do i=1,n
        if (a(i).gt.b(i)) then
          if (mm.eq.5) then
            if (c(i)  > 0   ) then
              a(i) = a(i)+c(i)
            else
              b(i) = b(i)+c(i)
             endif
          endif
        endif
      enddo
      write(6,*) ' test-1 '
      write(6,99) a,b
 99      format(5f10.5)
      return
      end
