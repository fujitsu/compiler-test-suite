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
       type ty1; complex i ; complex a(2); end type 
       complex ,parameter::p1=(1,1),p2=(2,2),p3=(3,3),p4=(4,4)
      end module
      subroutine ex    
       use type
       type (ty1) :: st1,st2(2)
       pointer (iaddr,pointer)
       complex,dimension(2):: x1=(/p2,p3/)
       complex,dimension(2),parameter:: x2=(/p2,p3/)
       complex,dimension(2):: x3=(/p1,p4/),x4=(/p1,-p1/)
       complex  scaler_value/p1/,pointer
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
         if (d%i/=p1) print *,'fail'
         if (any(d%a/=(/p2,x2(2)/))) print *,'fail'
        end subroutine
        function ty1_chk_f(d) result(r)
         type (ty1)::d,r
         if (d%i/=p1) print *,'fail'
         if (any(d%a/=(/p2,x2(2)/))) print *,'fail'
         r=d
        end function  
      end
      subroutine basic
      use type,only:p1,p2,p3,p4
       type ty1
         complex i 
         complex a(2)
       end type 
       type (ty1) :: st1
       pointer (ii,jj)
       complex,dimension(2):: x=(/p2,p3/)
       complex j,jj
       call func1
       ii=loc(j)
       j=p1
       st1=ty1(jj,x      )
       if (st1%i/=p1)print *,'fail'
       if (st1%a(1)/=p2)print *,'fail'
       if (st1%a(2)/=p3)print *,'fail'
      end
      subroutine func1
       call sub1() 
       call sub3() 
       end
       subroutine sub3()
      use type,only:p1,p2,p3,p4
       type ty1
         complex i 
         complex a(10)
       end type 
       type (ty1) :: st1
       complex j,po
       complex,parameter::p5=(5,5),p6=(6,6),p7=(7,7),p8=(8,8),
     1                    p9=(9,9),p10=(10,10)
       pointer (ii,po)
       ii=loc(j)
       j=p1
       st1=ty1(po,(/p1,p2,p3,p4,p5,p6,p7,p8,p9,p10/))
       if (abs(st1%i-p1)>.1) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i,i)) print *,'fail'
       end do
       end
       subroutine sub1()
      use type,only:p1,p2,p3,p4
       complex j
       complex,parameter::p5=(5,5),p6=(6,6),p7=(7,7),p8=(8,8),
     1                    p9=(9,9),p10=(10,10)
       type ty1
         complex i 
         complex a(10)
       end type 
         complex pi,ij
         complex pa(10)
         complex a(10)
       parameter (pi=p2)
       parameter (pa=(/p2,p3,p4,p5,p6,p7,p8,p9,p10,(11,11)/))
       type (ty1) :: st1
       st1=ty1(p1,(/p1,p2,p3,p4,p5,p6,p7,p8,p9,p10/))
       if (st1%i.ne.p1) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i,i)) print *,'fail'
       end do
       st1=ty1(pi,pa)
       if (st1%i.ne.p2) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i+1,i+1)) print *,'fail'
       end do
       ij=pi+p1
       a=pa+p1
       st1=ty1(ij,a)
       if (st1%i.ne.p3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i+2,i+2)) print *,'fail'
       end do
       st1=ty1(ij+p1,a+p1)
       if (st1%i.ne.p4) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i+3,i+3)) print *,'fail'
       end do
       st1=ty1(ij,(/(a(i),i=1,10)/))
       if (st1%i.ne.p3) print *,'fail'
       do i=1,10
         if (st1%a(i).ne.cmplx(i+2,i+2)) print *,'fail'
       end do
       end
