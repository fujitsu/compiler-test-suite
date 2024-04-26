      complex*8  cb(16)
      complex*16 cd(16)
      do i=1,16
         cb(i) = cmplx(i,i+3)
         cd(i) = cb(i)
      enddo
      call cexp(cb)
      call cdexp(cd)
      end

      subroutine cexp(cb)
      complex*8  ca(16),cb(16)
      do i=1,16
         ca(i) = exp(cb(i))
      enddo
      write(6,*) "cexp"
      write(6,*) ca
      end

      subroutine cdexp(cd)
      complex*16  cc(16),cd(16)
      do i=1,16
         cc(i) = exp(cd(i))
      enddo
      write(6,*) "cdexp"
      write(6,*) cc
      end
      
