      program main
      complex(16) ca(65),cb(65),s,t
      real(8) rb(65),rc(65),rr,res(65)
      call init(ca,cb,s,t,rb,rc,rr,res,65)
      do i=1,2
        call test(ca,cb,s,t,rb,rc,rr,65)
      enddo
      do i=1,65
         if(rb(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(ca,cb,s,t,rb,rc,rr,res,n1)
      complex(16) ca(65),cb(65),s,t
      real(8) rb(65),rc(65),rr,res(65)
      t = 0
      s = 0
      rr = 0

      do i=1,65
         ca(i) = i
         cb(i) = i
         rb(i) = 0
         rc(i) = i
         if (i .gt. n1/2) then
            res(i) = i + ca(i)
         else
            res(i) = i * 2
         endif
      enddo
      end

      subroutine test(ca,cb,s,t,rb,rc,rr,n1)
      complex(16) ca(65),cb(65),s,t
      real(8) rb(65),rc(65),rr
      
      do i=1,65
         rr = rc(2)
         s = ca(i)
         if (rr .gt. n1/2) then
            t = cb(i) + s
         else
            t = cb(i)
         endif
         rb(i) = t + s
      enddo
      
      end
