   subroutine s1()
       integer,pointer::p(:)
       integer,target ::t(5)=[1,2,3,4,5]
       p=>t(1:5:2)
       call ss(pff())
       call ss(aff())
       call ss(p)
       call ss2(p,pff())
       call css2(p,cpff())
       call ss((pff()))
       call ss(contpff())
       call ss([1,3,5])
       call ess(contpff())
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
        if(any(a /= [1,3,5])) print*,"121"
      end subroutine

      subroutine ess(a)
      integer::a(3)
        if(any(a /= [1,3,5])) print*,"121"
      end subroutine

      subroutine ss2(a,b)
      integer,contiguous::a(:),b(:)
        if(any(a /= [1,3,5])) print*,"221"
        if(any(b /= [1,3,5])) print*,"222"
      end subroutine

      subroutine css2(a,b)
      integer,contiguous::a(:)
      class(*),contiguous,pointer::b(:)
        if(any(a /= [1,3,5])) print*,"321"
        select type(b)
         type is(integer)
          if(any(b /= [1,2,3])) print*,"322"
         class default
           print*,"323"
       end select
      end subroutine

      function pff()
      integer,pointer::pff(:)
      integer,save,target :: t(5)=[1,2,3,4,5]
      pff=>t(1:5:2)
      end function

      function contpff()
      integer,pointer,contiguous ::contpff(:)
      integer,save,target :: t(3)=[1,3,5]
      contpff=>t(1:3)
      end function

      function cpff()
      class(*),pointer,contiguous ::cpff(:)
      integer,save,target :: t(5)=[1,2,3,4,5]
      cpff=>t(1:3)
      end function

      function aff()
      integer,allocatable :: aff(:)
      integer,save,target :: t(3)=[1,3,5]
      allocate(aff(3))
      aff = t
      end function

      end subroutine

      call s1()
      print *,'Pass'
      end


