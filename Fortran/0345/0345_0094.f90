      integer function usize(i,n)
       integer(kind=4),dimension(n)::i
        print *,i,n
        usize=size(i)
      end function

      subroutine sub(i,n,j,usize)
       integer(kind=4),intent(in)::n
       integer(kind=4),dimension(n)::i
       integer(kind=4),intent(out)::j
       interface
        function usize(i,n)
         integer(kind=4),dimension(n)::i
        end function
       end interface
        j=usize(i,n)
      end subroutine

      subroutine sss
       integer(kind=4),parameter::n=2
       integer(kind=4),dimension(n)::i
       interface
        function usize(i,n)
         integer(kind=4),dimension(n)::i
        end function
       end interface
        call sub(i,n,j,size)
        print *,j
      end subroutine

      program main
        print *,'pass'
      end program
