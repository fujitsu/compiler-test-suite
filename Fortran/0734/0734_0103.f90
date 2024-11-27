     type z
      integer,pointer,dimension(:,:,:):: a3
     end type
     type (z) a5
     integer,target :: ay(3,3,3)
     ay=reshape((/(i,i=1,27)/),(/3,3,3/))
     a5%a3=>ay(1:3:2,1:3:2,1:3:2)
     call ss1(a5)
     print *,'pass' 
     contains
      subroutine ss1(a5)
      type (z) a5
      call sx(a5%a3(:,:,:))
     end subroutine
     subroutine sx(x4)
      integer,dimension(2,2,2)::x4
      if (any((/x4/)/=(/1,3,7,9,19,21,25,27/)))write(6,*) "NG"
     end subroutine
   end
