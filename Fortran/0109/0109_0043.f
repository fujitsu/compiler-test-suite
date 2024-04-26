
      program main
      character(len=1),allocatable,dimension(:)::chr_a
      character(len=1)::chr_b(10)/10*'a'/
      integer(kind=4)::error/0/

      allocate (chr_a(10))
      chr_a = 'a'
      where ( chr_a(:) == 'z' )
        chr_a(:) = 'b'
      end where

      do i=1,10
         if(chr_a(i)/=chr_b(i)) error=1
      enddo
      if(error/=0) then
         write(6,*) '*** ng ?? ***'
         write(6,*) 'true value :',chr_b
         write(6,*) 'calc value :',chr_a
      else
         write(6,*) '*** ok    ***'
      endif
      deallocate (chr_a)
      stop
      end


