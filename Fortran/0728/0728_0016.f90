      call sub1()
      call sub2()
      print *,'pass'
      end

      module mod1
      interface aa
       module procedure mmod1_sub
      end interface
       contains
       subroutine mmod1_sub()
       integer a(20),b(10),c(10),ia(10)
       parameter (ia=(/1,2,3,4,5,6,7,8,9,10/))
       equivalence (a,b)
       equivalence (a(11),c(1))
       data b(ia) /1,2,3,4,5,6,7,8,9,10/
       data c((/ia/)) /11,12,13,14,15,16,17,18,19,20/
       integer arr(10)
       j=ifun1((/a/),(/1,1,1,1,1,1,1,1,1,1/),(/(i,i=1,10)/))
       j=ifun1((/(1,i=1,10),c/),(/c/),(/(i,i=1,10)/))
       contains
         function ifun1(a1,a2,a3) result(ians)
         integer a1(20),a2(10),a3(10)
         do i=1,20,1
            if (a(i).ne.a1(i)) write(6,*) "NG"
         end do
         b=a2
         c=a3
         ians=1
         end function
         function ifun2() result(ians)
         ians=a(1)
         end function
        end subroutine
       end module

       subroutine sub1()
       use mod1
       call mmod1_sub()
       end

       module mod2
interface aa
module procedure mmod2_sub
end interface
contains
subroutine mmod2_sub()
       integer a(10)
       integer b(10)
       equivalence (a,b)
       common /com2/ a1         
       equivalence (a(1),b(1))
       equivalence (a(1),i)   
       equivalence (i   ,j)   
       equivalence (k   ,j)   
       equivalence (a1  ,k) 
       i=1
       if (j.ne.a(1)) write(6,*) "NG"
       if (k.ne.1   ) write(6,*) "NG"
end subroutine
       end 
       subroutine sub2()
       use mod2
         call mmod2_sub()
       end 
