      real*4 a4(5,5),b4(5)/5*0/,c4(5)/5*0/
      data a4/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
     +        21,22,23,24,25/
      n5 = a4(5,1)

      do j=1,1
        do k=1,n5
          do i=5,n5
            c4(i)=c4(i)+a4(i,k)+b4(k)
          enddo
        enddo
      enddo

      if (c4(5) .eq. 75) then
         print *,' ok '
      else
         print *,' ng',c4
      endif
      end
