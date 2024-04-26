      program main
      complex(8) ca(65),cb(65),s,t,res(65)
      real(8) rb(65),rc(65)
      integer ll(65)
      data ll/1,0,0,1,0,0,1,1,0,1,1,0,1,1,0,0,
     +        1,1,0,0,1,0,0,1,0,0,1,1,0,1,1,0,
     +        1,0,0,0,0,1,1,1,0,1,1,1,0,0,1,0,
     +        0,0,1,0,1,1,0,1,1,1,1,0,0,0,1,0,1/
      call init(ca,cb,s,t,rb,rc,res,65,ll)
      do i=1,2
        call test(ca,cb,s,t,rb,rc,65,ll)
      enddo
      do i=1,65
         if(ca(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(ca,cb,s,t,rb,rc,res,n1,ll)
      complex(8) ca(65),cb(65),s,t,res(65)
      real(8) rb(65),rc(65)
      integer ll(65)
      t = 0
      s = 0

      do i=1,65
         cb(i) = cmplx(i,i+10)
         if (ll(i) .eq. 1) then
            res(i) = cb(i) - (0.0,1.0)
         else
            res(i) = cb(i) + (2.0,3.0)
         endif
      enddo
      end

      subroutine test(ca,cb,s,t,rb,rc,n1,ll)
      complex(8) ca(65),cb(65),s,t
      real(8) rb(65),rc(65)
      integer ll(65)
      
      do i=1,65
         if (ll(i) .eq. 1) then
            ca(i) = cb(i) - (0.0,1.0)
         else
            ca(i) = cb(i) + (2.0,3.0)
         endif
      enddo
      
      end
