      program main
      integer a(10),b(10,10)
      type ty1
        integer a(10)
        integer b(10,10)
      end type
      type (ty1) :: str
      a=(/1,2,3,4,5,6,7,8,9,10/)
      do i=1,10; b(i,a)=a; end do 
      str%a=(/(i,i=10,1,-1)/)
      do i=1,10; str%b(i,a)=str%a; end do 
      call sub1(a(a),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub1(b(1,a),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub1((/(i,i=1,10)/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub1((/1,2,3,4,5,6,7,8,9,10/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub1((/(/1,2,3,4,5,6,7,8,9,10/)/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub1(a(a)+0,ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub2(str%a(a),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub2(str%b(1,a),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub2((/10,9,8,7,6,5,4,3,2,1/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub2((/(i,i=10,1,-1)/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call sub2((/str%a/),ia1)
      if (ia1.eq.1) print *,'err 1 '
      call insub()
      print *,'pass'
      contains 
        subroutine insub()
        end subroutine
      end

      subroutine sub1(i,ierr)
      integer i(10)
      ierr=0
      do j=1,10;if(i(j).ne.j) ierr=1;enddo
      end

      subroutine sub2(i,ierr)
      integer i(10)
      ierr=0
      do j=1,10;if(i(j).ne.11-j) ierr=1;enddo
      end
