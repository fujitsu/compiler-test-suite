      program main
      call sub1()
      print *,'pass'
      end
      subroutine sub1()
      common /com1/ ierr
      integer a(10),i10,b(10)
      integer,parameter,dimension(10)::pa=(/1,2,3,4,5,6,7,8,9,10/)
      type ty1
         integer pa(10)
      end type
      type (ty1) ::str
      parameter (str=ty1(pa))
      parameter (i10=10)
      irr=1
      a=(/1,2,3,4,5,6,7,8,9,10/)
      call errchk(a,1,i10)
      b=(/a/)
      call errchk(b,1,i10)
      b=(/1,2,3,4,5,6,7,8,9,a(10)/)
      call errchk(b,1,i10)
      b=(/1,2,3,4,5,6,7,8,a(9),10/)
      call errchk(b,1,i10)
      b=(/a(1),2,3,4,5,6,7,8,a(9),10/)
      call errchk(b,1,i10)
      b=(/a(1:1),2,a(3:8),a(9),10/)
      call errchk(b,1,i10)
      b=(/pa(1:1),2,pa(3:8),pa(9),10/)
      call errchk(b,1,i10)
      b=(/pa(1:1),2,pa(3:8),pa(9),10/)
      call errchk(b,1,i10)
      b=(/pa/)
      call errchk(b,1,i10)
      b=(/str%pa/)
      call errchk(b,1,i10)
      b=(/pa(a)/)
      call errchk(b,1,i10)
      b=(/str%pa(a)/)
      call errchk(b,1,i10)
      b=(/pa(1:10)/)
      call errchk(b,1,i10)
      b=(/str%pa(1:10)/)
      call errchk(b,1,i10)
      ii=10
      b=(/pa(1:ii)/)
      call errchk(b,1,i10)
      b=(/str%pa(1:ii)/)
      call errchk(b,1,i10)
      end
      subroutine errchk(a,i,k)
      common /com1/ ierr
      integer a(k),i
      do j=i,k
        if (a(j).ne.j) print *,'err sub',ierr
      end do
      end
