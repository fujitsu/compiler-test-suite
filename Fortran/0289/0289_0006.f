      program main
        call sub1(5)
        call sub2( )
      end

      subroutine sub1(n) 

 100  do i=1,n
         if(i.eq.0) goto 100 
      enddo

      do i=1,n
 200     if(i.eq.999) goto 200
      enddo

      do i=1,n
         goto 300
 300  enddo

      do i=1,1
         goto 400
 400  enddo   

      do i=1,n
         goto 500
 500     goto 600
 600     goto 700
 700     continue
      enddo

      print *, '*** ok case#1 ***'
      return
      end

      subroutine sub2() 

 100  do i=1,500
         if(i.eq.0) goto 100 
      enddo

      do i=1,500
 200     if(i.eq.999) goto 200
      enddo

      do i=1,500
         goto 300
 300  enddo

      do i=1,5
         goto 400
 400  enddo   

      do i=1,500
         goto 500
 500     goto 600
 600     goto 700
 700     continue
      enddo

      print *, '*** ok case#2 ***'
      return
      end
