
      program main
      type str2
        integer  *2,dimension(3,3,3)::i2a
        character*6                 ::filler
        complex  *8,dimension(3,3,3)::c8a
        logical    ,dimension(3,3,3)::mask/27*.false./
      end type
      integer(kind=4)::error/0/
      type (str2) :: Z

      Z%i2a = 1
      do i = 1 , 3
         where ( Z%mask(i,:,:) )
         elsewhere
           Z%mask(i,:,:) = .true.
         endwhere
         where ( Z%mask(i,:,:) )
           Z%c8a(i,:,:) = cmplx(1)
         endwhere
      end do
      do k=1,3
         do j=1,3
            do i=1,3
               if(Z%c8a(i,j,k)/=cmplx(Z%i2a(i,j,k),0)) error=1
            enddo
         enddo
      enddo
      if(error/=0) then
         write(6,*) '*** ng ?? ***'
      else
         write(6,*) '*** ok !! ***'
      endif
      stop
      end
