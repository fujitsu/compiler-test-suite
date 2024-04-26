      integer::ii
      interface Assignment(=)
      subroutine sub(d1,d2)
      integer,INTENT(OUT) :: d1
      character(len=*),intent(in) :: d2
      end subroutine
      end interface Assignment(=)
      block
      interface operator(*)
      function a1(d1,d2)
      integer::a1
      character(len=*),intent(in) :: d1,d2
      end function
      end interface operator(*)
        block
        interface operator(*)
        function a2(d1,d2)
        integer::a2
        character(len=*),intent(in) :: d1,d2
        end function
        end interface operator(*)
        if('ch'*'abc'/=7)print*,101
        end block  
        block
        interface Assignment(=)
        subroutine sub2(d1,d2)
        integer,INTENT(OUT) :: d1
        character(len=*),intent(in) :: d2
        end subroutine
        end interface Assignment(=)
        ii= 'abc'
        if(ii/=4)print*,102
        end block
        block
        interface operator(*)
        function a2(d1,d2)
        integer::a2
        character(len=*),intent(in) :: d1,d2
        end function
        end interface operator(*)
        if('ch'*'abc'/=8)print*,103
        end block
        print*,"pass"
      end block
      end

      function a1(d1,d2)
      integer::a1
      character(len=*),intent(in) :: d1,d2
      integer,save::ii=1
      a1=len(d1)*len(d2)+ii
      ii=ii+1
      end function

      subroutine sub(d1,d2)
      integer,intent(out) :: d1
      character(len=*),intent(in) :: d2
      integer,save::ii=1
      d1 = len(d2)+ii
      ii=ii+1
      end subroutine

      function a2(d1,d2)
      integer::a2
      character(len=*),intent(in) :: d1,d2
      integer,save::ii=1
      a2=len(d1)*len(d2)+ii
      ii=ii+1
      end function

      subroutine sub2(d1,d2)
      integer,intent(out) :: d1
      character(len=*),intent(in) :: d2
      integer,save::ii=1
      d1 = len(d2)+ii
      ii=ii+1
      end subroutine
