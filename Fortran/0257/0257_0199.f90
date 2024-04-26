   subroutine s1()
       
       call ss(pff())
      contains
      subroutine ss(a)
      integer::a(3,3)
      end subroutine

      function pff()
      integer,pointer ::pff(:,:)
      integer,save,target :: t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
      pff=>t(:,:)
      end function
      end subroutine

      call s1()
      print *,'Pass'
      end


