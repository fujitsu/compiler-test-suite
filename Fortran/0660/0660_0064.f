      program main
      interface 
      subroutine sub4(a)
      integer,pointer :: a(:,:)
      integer,target :: ia(10,10)
      end subroutine
      subroutine sub1(a)
      integer,pointer :: a(:)
      integer,target :: ia(10)
      end subroutine
      subroutine sub2(a)
      integer,pointer:: a
      end subroutine
      subroutine sub3(a)
      type ty1
        sequence
        integer,pointer :: ip
      end type
      type (ty1) ::a
      end subroutine
      end interface
      type ty1
        sequence
        integer,pointer :: ip
      end type
      type (ty1) :: str
      integer ,pointer :: a(:)
      integer ,pointer :: b(:,:)
      integer ,pointer :: i
      integer ,target  :: ia(10),ib(10,10),ii
      i=>ii
      ia=(/(j,j=1,10)/)
      ib=1                
      ii=1
      call sub1(a)   
      call sub2(i)   
      call sub3(str)   
      call sub4(b)   
      print *,'pass'
      end

      subroutine sub4(a)
      integer,pointer :: a(:,:)
      integer,target :: ia(10,10)
       a=>ia
       ia=1
       j=a(1,1) 
      end
      subroutine sub1(a)
      integer,pointer :: a(:)
      integer,target :: ia(10)
       a=>ia
       ia=1
       j=a(1) 
      end
      subroutine sub2(a)
      integer,pointer:: a
       j=a 
      end
      subroutine sub3(a)
      type ty1
        sequence
        integer,pointer :: ip
      end type
      type (ty1) ::a
      end
