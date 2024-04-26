complex ::a(3)=[(1.0,1.0),(2.0,2.0),(3.0,3.0)]
call sub(a%im)

         print *,'pass'
          contains
          subroutine sub(b)
        real,contiguous :: b(:)
        if(is_contiguous(b).neqv..true.)print*,"102"
        if (any(b/=[1.0,2.0,3.0])) print *,101

          end subroutine
          end

