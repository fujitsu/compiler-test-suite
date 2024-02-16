   subroutine s1()
       call ss(pff(1),pff(2),pff(2))
      contains
      subroutine ss(a,b,c)
      integer,optional,contiguous::a(:)
      integer,contiguous::b(:)
      integer,optional,contiguous::c(:)

      if(present(a))then
        print*,"121"
      endif
      if(.NOT.present(c))then
        print*,"122"
        if(any(c .ne. [1,3,5])) print*,"123"
      endif
        if(any(b .ne. [1,3,5])) print*,"124"
      end subroutine

      function pff(d1)
      integer,pointer ::pff(:)
      integer :: d1
      integer,save,target :: t(5)=[1,2,3,4,5]
     if(d1 .eq. 1)  pff=>NULL()
     if(d1 .eq. 2)  pff=>t(1:5:2)
      end function

      end subroutine

      call s1()
      print *,'Pass'
      end

