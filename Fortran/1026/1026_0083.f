      common /pts/x,y,z/matrix/a(3,3),b(2,2)/pts/i,j,k 
      real ,dimension(2,2,2,2,2,2,2) :: aaa
      character,dimension(80) :: line1
      character(len=80) line2
      character(len=80),dimension(80)::cha
      type tag
      real , dimension(3) :: tag_dim
      end type
      type (tag),dimension(10) :: str
      character,pointer::ptr
      character,target::ptr_t
      ptr=>ptr_t
      ptr_t='p'
      nullify(ptr)
      do i=1,10
      line1(i)='1'
      end do
      line2 = "abcdefghij"
      cha = "test for ..."
      call sub(80,cha)
      contains
        subroutine sub(n,cha)
        intent(in) :: n
        character(len=*),dimension(n) :: cha
        print *,n
        print *,cha
        end subroutine
      end
