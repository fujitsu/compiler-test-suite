      module m1
         contains
            subroutine sub
             write(13,*)1
            end subroutine
      end module
      subroutine sub
        write(13,*)2
      end
      call sub
      call s
print *,'pass'
      end
      subroutine s
      use m1,only:sub
      call sub
      rewind 13
      read(13,*) i
      if(i/=2)print *,'error-1'
      read(13,*) i
      if(i/=1)print *,'error-2'
      END
