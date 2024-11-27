      call s1
      print *,'pass'
      end
      module  mm
       interface operator(+)
         module procedure nt
       end interface
       interface assignment(=)
         module procedure as
       end interface
       interface operator(//)
         module procedure at
       end interface
       interface x
         module procedure xa,xs
       end interface
       type st
         character(len=4),pointer::a1
         character(len=4),pointer,dimension(:,:)::a2
         character(len=4)        ::a3
         character(len=4),        dimension(2,2)::a4
       end type
       character(len=4),pointer::b1
       character(len=4),pointer,dimension(:,:)::b2
       character(len=4),target ::b3
       character(len=4),target, dimension(2,2)::b4
       type(st),pointer::c1,c2(:,:)
       type(st),target ::c3,c4(2,2)
       logical,parameter::t=.true.,f=.false.
       logical d2_omit_flag
       logical d1_alloc_flag
       contains
       subroutine as(x1,x2)
       logical,intent(out)::x1
       integer,intent(in)::x2
       if (x2==1)x1=+f
       if (x2==0)x1=+t
       end subroutine
       function nt(a) result(r)
       logical,intent(in)::a
       logical,pointer::r
       allocate(r);r=.not.a
       end function
       function at(a1,a2) result(r)
       logical,intent(in)::a1,a2
       logical,pointer::r
       allocate(r);r=a1.and.a2
       end function
       subroutine xs(d1,d2)
       character(len=*),pointer::d1,d2
       optional d2
       if (associated(d1).and.+d1_alloc_flag)write(6,*) "NG"
       end subroutine
       subroutine xa(d1,d2)
       character(len=*),dimension(:,:),pointer::d1,d2
       optional d2
       if (present(d2).and.+d2_omit_flag)write(6,*) "NG"
       if (+present(d2).and.+(+d2_omit_flag))write(6,*) "NG"
       if (associated(d1).and.+d1_alloc_flag)write(6,*) "NG"
       if (+associated(d1).and.+(+d1_alloc_flag))write(6,*) "NG"
       end subroutine
      end module
      subroutine s1
      use mm
      d2_omit_flag=1
      d1_alloc_flag=0
      call x(d1=b1)
      end 
