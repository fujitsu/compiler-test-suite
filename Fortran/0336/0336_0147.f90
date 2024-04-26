      program main
      logical(kind=4)::L4a(1,1,10)
      complex(kind=4)::c8a(1,1,10)
      integer(kind=4)::error/0/
      data L4a/.true. ,.false.,.true. ,.false.,.true. &
              ,.false.,.true. ,.false.,.true. ,.false./
      data c8a/(0.,0.),(0.,0.),(0.,0.),(0.,0.),(0.,0.)&
              ,(0.,0.),(0.,0.),(0.,0.),(0.,0.),(0.,0.)/
      where(L4a)
        c8a=c8a+EXP(-(17,0.0_4))
      end where

      do i=1,10
        if(mod(i,2) .eq. 0) then
          if(c8a(1,1,i) .ne. CMPLX(0.,0.) )    error=1
        else
          if(abs(c8a(1,1,i) - EXP(-(17,0.0_4))).gt.1.0d-14) error=1
        endif
      enddo
      if(error /= 0) then
        write(6,*) '*** NG ***'
        write(6,*) 'calc value: ',c8a
        write(6,*) 'true value: ',exp(-(17,0.0_4)),CMPLX(0.,0.),'...'
      else
        write(6,*) '*** OK ***'
      endif
      stop
      end
