c
c
      call s1
      print *,'pass'
      end
      subroutine s1
       call basic
       call ex    
      end
      module type
       type ty1; integer i ; integer a(2); end type 
      end module
      subroutine ex    
       use type
       type (ty1) :: st1,st2(2)
       pointer (iaddr,pointer)
       integer,dimension(2):: x1=(/2,3/)
       integer,dimension(2),parameter:: x2=(/2,3/)
       integer,dimension(2):: x3=(/1,4/),x4=(/1,-1/)
       integer  scaler_value/1/,pointer
       iaddr=loc(scaler_value)
       st1=ty1(pointer,x1); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x1))
       st1=ty1_chk_f(ty1(pointer,x1)); call ty1_chk_s(st1)
       st1=ty1(pointer,x2); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x2))
       st1=ty1_chk_f(ty1(pointer,x2)); call ty1_chk_s(st1)
       st1=ty1(pointer,x3+x4); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x3+x4))
       st1=ty1_chk_f(ty1(pointer,x3+x4)); call ty1_chk_s(st1)
       st1=ty1(pointer,(/x3+x4/)); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,(/x3+x4/)))
       st1=ty1_chk_f(ty1(pointer,(/x3+x4/))); call ty1_chk_s(st1)
       st1=ty1(pointer,(/x1/)); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,(/x1/)))
       st1=ty1_chk_f(ty1(pointer,(/x1/))); call ty1_chk_s(st1)
       st1=ty1(pointer,(/x2/)); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,(/x2/)))
       st1=ty1_chk_f(ty1(pointer,(/x2/))); call ty1_chk_s(st1)
       st2=ty1(pointer,x1); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,x1),ty1(pointer,x1)/))
       st2=ty1_chk_f(ty1(pointer,x1)); call ty1_chk_as(st2)
       st2=ty1(pointer,x2); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,x2),ty1(pointer,x2)/))
       st2=ty1_chk_f(ty1(pointer,x2)); call ty1_chk_as(st2)
       st2=ty1(pointer,x3+x4); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,x3+x4),ty1(pointer,x3+x4)/))
       st2=ty1_chk_f(ty1(pointer,x3+x4)); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x1/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x1/)),ty1(pointer,(/x1/))/))
       st2=ty1_chk_f(ty1(pointer,(/x1/))); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x2/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x2/)),ty1(pointer,(/x2/))/))
       st2=ty1_chk_f(ty1(pointer,(/x2/))); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x3+x4/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x3+x4/)),
     1                     ty1(pointer,(/x3+x4/))/))
       st2=ty1_chk_f(ty1(pointer,(/x3+x4/))); call ty1_chk_as(st2)
       contains 
        subroutine ty1_chk_as(d)
         type (ty1)::d(:)
         do k=1,size(d)
            call ty1_chk_s(d(k))
         end do
        end subroutine
        subroutine ty1_chk_s(d)
         type (ty1)::d
         if (d%i/=1) print *,'fail'
         if (any(d%a/=(/2,x2(2)/))) print *,'fail'
        end subroutine
        function ty1_chk_f(d) result(r)
         type (ty1)::d,r
         if (d%i/=1) print *,'fail'
         if (any(d%a/=(/2,x2(2)/))) print *,'fail'
         r=d
        end function  
      end
      subroutine basic
       type ty1
         integer i 
         integer a(2)
       end type 
       type (ty1) :: st1
       pointer (ii,jj)
       integer,dimension(2):: x=(/2,3/)
       call func1
       ii=loc(j)
       j=1
       st1=ty1(jj,x      )
       if (st1%i/=1)print *,'fail'
       if (st1%a(1)/=2)print *,'fail'
       if (st1%a(2)/=3)print *,'fail'
      end
      subroutine func1
       call sub1() 
       call sub2() 
       call sub3() 
       end
       subroutine sub3()
       type ty1
         integer i 
         integer a(10)
       end type 
       type (ty1) :: st1
       integer po
       pointer (ii,po)
       ii=loc(j)
       j=1
       st1=ty1(po,(/1,2,3,4,5,6,7,8,9,10/))
       if (st1%i.ne.1) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i) print *,'fail'
       end do
       end
       subroutine sub1()
       type ty1
         integer i 
         integer a(10)
       end type 
         integer pi 
         integer pa(10)
         integer a(10)
       parameter (pi=2)
       parameter (pa=(/2,3,4,5,6,7,8,9,10,11/))
       type (ty1) :: st1
       st1=ty1(1,(/1,2,3,4,5,6,7,8,9,10/))
       if (st1%i.ne.1) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i) print *,'fail'
       end do
       st1=ty1(pi,pa)
       if (st1%i.ne.2) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+1) print *,'fail'
       end do
       ij=pi+1
       a=pa+1
       st1=ty1(ij,a)
       if (st1%i.ne.3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+2) print *,'fail'
       end do
       st1=ty1(ij+1,a+1)
       if (st1%i.ne.4) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+3) print *,'fail'
       end do
       st1=ty1(ij,(/(a(i),i=1,10)/))
       if (st1%i.ne.3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+2) print *,'fail'
       end do
       end
       subroutine sub2()
       type ty1
         integer a(10)
         integer i
       end type 
         integer pi(10)
         integer pa
         integer ij(10)
       parameter (pa=2)
       parameter (pi=(/2,3,4,5,6,7,8,9,10,11/))
       type (ty1) :: st1
       st1=ty1((/1,2,3,4,5,6,7,8,9,10/),1)
       if (st1%i.ne.1) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i) print *,'fail'
       end do
       st1=ty1(pi,pa)
       if (st1%i.ne.2) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+1) print *,'fail'
       end do
       ij=pi+1
       a=pa+1
       st1=ty1(ij,a)
       if (st1%i.ne.3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+2) print *,'fail'
       end do
       st1=ty1(ij+1,a+1)
       if (st1%i.ne.4) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+3) print *,'fail'
       end do
       st1=ty1((/(ij(i),i=1,10)/),a)
       if (st1%i.ne.3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.i+2) print *,'fail'
       end do
       end
