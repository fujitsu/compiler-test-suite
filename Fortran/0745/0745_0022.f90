      module m1
         contains
            subroutine sub(i,j)
             write(1,*)i-j
            end subroutine
      end module
      subroutine sub(c)
      character*(*) c
        write(1,*)c
      end
      external sub
      do i=1,3
      call x(sub)
      call s
      call x(sub)
      call s
      end do
      call chk
print *,'pass'
      end
      subroutine s
      use m1
      call y(sub)
      end
      subroutine chk
      rewind 1
      do ii=1,6
      read(1,*) i
      if(i/=2)print *,'error-1'
      read(1,*) i
      if(i/=1)print *,'error-2'
      end do
      END
      subroutine x(p)
      call p('2')
      end
      subroutine y(p)
      call p(4,3)
      end
