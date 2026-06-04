      CALL SUB1()
      print *,'pass'
      end
      subroutine sub1()
      interface operator(-)
        function ifun1(iarg1,iarg2) result(ifun)
        integer ,intent(in) :: iarg1(10,10)
        logical ,intent(in) :: iarg2(1,1)
        end function
        function ifun2(iarg1,iarg2) result(ifun)
        logical ,intent(in) :: iarg1(1,1)
        integer ,intent(in) :: iarg2(10,10)
        end function
        function ifun3(iarg1,iarg2) result(ifun)
        integer ,intent(in) :: iarg1(10,10)
        logical ,intent(in) :: iarg2(1)
        end function
        function ifun4(iarg1,iarg2) result(ifun)
        logical ,intent(in) :: iarg1(1)
        integer ,intent(in) :: iarg2(10,10)
        end function
      end interface
      integer a(10,10)
      logical b(1,1),c(1)
      do i=1,10;do j=1,10
         a(i,j)=i*j
      end do;end do
      b=.true.
      c=.true.
      ians=a-b
      if (ians/=10) print *,"fail"
      ians=a-(/c/)
      if (ians/=30) print *,"fail"
      ians=a-(/.true./)
      if (ians/=30) print *,"fail"
      ians=a-(/(.true.,i=1,1)/)
      if (ians/=30) print *,"fail"
      ians=b-a
      if (ians/=20) print *,"fail"
      ians=(/b/)-a
      if (ians/=40) print *,"fail"
      ians=(/.true./)-a
      if (ians/=40) print *,"fail"
      ians=(/(.true.,i=1,1)/)-a
      if (ians/=40) print *,"fail"
      end subroutine
        function ifun1(iarg1,iarg2) result(ifun)
        integer ,intent(in) :: iarg1(10,10)
        logical ,intent(in) :: iarg2(1,1)
        ifun=0
        if (iarg2(1,1).neqv..true.) return
      do i=1,10;do j=1,10
        if (iarg1(i,j)/=i*j) return
      end do;end do
        ifun=10
        end function
        function ifun2(iarg1,iarg2) result(ifun)
        logical ,intent(in) :: iarg1(1,1)
        integer ,intent(in) :: iarg2(10,10)
        ifun=0
        if (iarg1(1,1).neqv..true.) return
      do i=1,10;do j=1,10
        if (iarg2(i,j)/=i*j) return
      end do;end do
        ifun=20
        end function
        function ifun3(iarg1,iarg2) result(ifun)
        integer ,intent(in) :: iarg1(10,10)
        logical ,intent(in) :: iarg2(1)
        ifun=0
        if (iarg2(1).neqv..true.) return
      do i=1,10;do j=1,10
        if (iarg1(i,j)/=i*j) return
      end do;end do
        ifun=30
        end function
        function ifun4(iarg1,iarg2) result(ifun)
        logical ,intent(in) :: iarg1(1)
        integer ,intent(in) :: iarg2(10,10)
        ifun=0
        if (iarg1(1).neqv..true.) return
      do i=1,10;do j=1,10
        if (iarg2(i,j)/=i*j) return
      end do;end do
        ifun=40
        end function
