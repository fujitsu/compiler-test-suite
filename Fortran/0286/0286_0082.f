      program main
      common /com0/ b
      integer i10,b(10)
      parameter (i10=10)
      call sub1()
      call errchk(b,1,i10)
      print *,'PASS'
      end
      subroutine sub1()
      common /com0/ b
      common /com1/ ierr
      integer a(10),i10,b(10)
      integer,parameter,dimension(10)::pa=(/1,2,3,4,5,6,7,8,9,10/)
      type ty1
         integer pa(10)
      end type
      type (ty1) ::str
      parameter (str=ty1(pa))
      parameter (i10=10)
      ierr=1
      a=(/ 1,2,3,4,5,6,7,8,9,10 /)
      b=(/str%pa(a)/)
      end
      subroutine errchk(a,i,k)
      common /com1/ ierr
      integer a(k),i
      do j=i,k
        if (a(j).ne.j) print *,'err sub',ierr
      end do
      end
