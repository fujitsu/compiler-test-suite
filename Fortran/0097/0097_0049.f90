complex,target::a(3)=[(1.0,1.0),(2.0,2.0),(3.0,3.0)]
complex,pointer::ptr(:)
integer::k=1
ptr=>a(::k)
call sub(a(1:3:k+1)%im, ptr)
   if(any(a /= [(11.0,11.0),(12.0,2.0),(13.0,13.0)]))print*,"109"

         print *,'pass'
          contains
          subroutine sub(b,c)
        real,contiguous :: b(:)
        complex,contiguous :: c(:)

        if(is_contiguous(b).neqv..true.)print*,"102"
        if (any(b/=[1.0,3.0])) print *,101
        b = b+10.0
        c%re = c%re +10
        if(loc(c).ne.loc(a))print*,"104"
          end subroutine
          end

