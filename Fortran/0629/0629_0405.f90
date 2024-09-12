      module moda
        integer(kind=4),target ::i04a
        integer(kind=4),pointer::i04b
        contains
          subroutine bind()
            if(.not. associated(i04b)) then
               i04b=>i04a
            endif
          end subroutine

          subroutine sub1(i04c)
          integer(kind=4),pointer::i04c
          i04c=>i04a
          end subroutine
          subroutine sub2(i04d)
          integer(kind=4),target ::i04d
          i04b=i04d+1
          i04b=i04d+1
          end subroutine
      end module

      program main 
      use moda
      integer(kind=4),pointer::i04c
      integer(kind=4),target ::i04d
      call bind()
      call sub1(i04c)
      i04b=1
      i04c=i04b+1
      i04c=i04b+1
      i04d=1
      i04b=>i04d
      call sub2(i04d)

      if(i04c.eq.3 .and. i04d.eq.3) then
         write(6,*) 'ok'
      else
         write(6,*) 'ng'
      endif
      stop
      end
