      call sub1()
      print *,'pass'
      end

      module mod0
       interface assignment(=)
         module procedure ass1
       end interface
       integer ans
       integer jj
       contains
         subroutine ass1(i,j)
         integer,intent(inout) :: i
         character,intent(in) :: j
         intrinsic int,max,ior
         external min,size,ifun
         integer min,size,ifun
         integer a(10),b(11)
         integer pp(jj)     
         equivalence (a,b)
         equivalence (k,b(11))
         common /com1/  a,k
         data a /1,2,3,4,5,6,7,8,9,10/
         i=10         
         end subroutine
      end module

      module mod1
       interface assignment(=)
         subroutine ass1(i,j)
         use mod0,aaa1=>ass1
         integer,intent(inout) :: i
         character,intent(in) :: j
         intrinsic int,max,ior
         external min,size,ifun
         integer min,size,ifun
         integer a(10),b(11)
         integer pp(jj)     
         equivalence (a,b)
         equivalence (k,b(11))
         common /com1/  a,k
         end subroutine
       end interface
      end module

      subroutine sub1()
       use mod0
       i='a'
       if (i.ne.10) write(6,*) "NG"
      end subroutine 

      function ifun()
      integer min,size,ifun
      entry min()
      entry size()
      ifun=1
      end function
