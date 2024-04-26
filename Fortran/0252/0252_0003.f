      block
      interface operator(*)
      function a1(d1,d2)
      integer::a1
      character(len=*),intent(in) :: d1,d2
      end function
      end interface operator(*)
      if(('ch'*'abc')/=7) print*,101
      if(a1('ch','abc')/=8) print*,102
      end block

      block
      interface operator(*)
      function a1(d1,d2)
      integer::a1
      character(len=*),intent(in) :: d1,d2
      end function
      end interface operator(*)
      if(('ch'*'abc')/=9) print*,103
      if(a1('ch','abc')/=10) print*,104
      end block
      print*,"pass"
      end

      function a1(d1,d2)
      integer::a1
      character(len=*),intent(in) :: d1,d2
      integer,save::ii=1
      a1=len(d1)*len(d2)+ii
      ii=ii+1
      end function
