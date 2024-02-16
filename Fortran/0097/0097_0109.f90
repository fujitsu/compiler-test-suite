   subroutine s1()
       integer,pointer::p(:,:)
       integer,target ::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       p=>t(1:3:2,1:3:2)
       call ss(pff())
       call ss(aff())
       call ss(p)
       call ss((pff()))
      contains
      subroutine ss(a)
      integer,contiguous::a(:,:)
        if(any(a /= reshape([1,3,7,9],[2,2]))) print*,"121"
      end subroutine

      function pff()
      integer,pointer ::pff(:,:)
      integer,save,target :: t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
      pff=>t(1:3:2,1:3:2)
      end function

      function aff()
      integer,allocatable :: aff(:,:)
      integer,save,target :: t(2,2)=reshape([1,3,7,9],[2,2])
      allocate(aff(2,2))
      aff = t
      end function

      end subroutine

      call s1()
      print *,'Pass'
      end


