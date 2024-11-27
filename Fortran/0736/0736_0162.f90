      call s1
      print *,'pass'
      end
      module m1
       contains
         function i4_f(p) result(a)
           integer(kind=4),allocatable,dimension(:,:):: a
           integer(kind=4),allocatable,optional,dimension(:,:)::p
             if (.not.present(p))write(6,*) "NG"
             allocate(a(size(p,dim=1),size(p,dim=2)))
             a=p
         end function
         function   chk(p) result(r)
           logical r(2)
           integer(kind=4),allocatable,optional,dimension(:,:)::p
           r=.true.
           if (.not.present(p))write(6,*) "NG"
           if (.not.allocated(p))write(6,*) "NG"
           if (lbound(p,dim=1)/=-2)write(6,*) "NG"
           if (lbound(p,dim=2)/= 0)write(6,*) "NG"
           if (ubound(p,dim=1)/=-1)write(6,*) "NG"
           if (ubound(p,dim=2)/= 1)write(6,*) "NG"
           if(p(-2,0)/=1)write(6,*) "NG"
           if (p(-1,0)/=2)write(6,*) "NG"
           if(p(-2, 1)/=3)write(6,*) "NG"
           if (p(-1,1)/=4)write(6,*) "NG"
         end function   
      end module
      recursive subroutine s1
      use m1
      integer(kind=4),allocatable,dimension(:,:):: pointer
      integer yy(2,2)
      allocate(pointer(-2:-1,0:1))
      pointer=reshape((/1,2,3,4/),(/2,2/))
      yy=i4_f(p=pointer)
      if (any(yy/=reshape((/1,2,3,4/),(/2,2/))))write(6,*) "NG"
      end
