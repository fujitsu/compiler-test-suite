   subroutine s1()
       integer,pointer::p(:,:)
       integer,target ::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       integer::k=1
       p=>t(1:3:k,1:3:k)
       call ss(pff())
       call ss(aff())
       call ss(p)
       call ss((pff()))
      contains
      subroutine ss(a)
      integer::a(3,3)
        if(any(a /= reshape([1,2,3,4,5,6,7,8,9],[3,3]))) print*,"121",a
      end subroutine

      function pff()
      integer,pointer ::pff(:,:)
      integer,pointer ::pff2(:,:)
      integer,save,target :: t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
      integer::k=1
      pff2=>t(1:3:k,1:3:k)
      pff=>pff2(:,:)
      end function

      function aff()
      integer,allocatable :: aff(:,:)
      integer,save,target :: t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
      allocate(aff(3,3))
      aff = t
      end function

      end subroutine

      call s1()
      print *,'Pass'
      end


