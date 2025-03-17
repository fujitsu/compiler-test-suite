      subroutine tt1(j4_f,ii )
      interface
        function j4_f(p) result(a)
           character(kind=1),pointer,dimension(:,:):: a
           character(kind=1,len=*),pointer,optional::p(:,:)
        end function
      end interface
      end subroutine
      end
