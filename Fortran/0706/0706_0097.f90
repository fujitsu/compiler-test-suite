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
       type ty1; character*2 i ; character*2 a(2); end type 
       character(len=*) ,parameter::p1='1a',p2='2b',p3='3c',p4='4d'
      end module
      subroutine ex    
       use type
       type (ty1) :: st1,st2(2)
       pointer (iaddr,pointer)
       character(len=2),dimension(2):: x1=(/p2,p3/)
       character(len=2),dimension(2),parameter:: x2=(/p2,p3/)
       character(len=1),dimension(2):: x3=(/p2(:1),p3(:1)/),
     1                                 x4=(/p2(2:),p3(2:)/)
       character(len=2)  scaler_value/p1/,pointer
       iaddr=loc(scaler_value)
       st1=ty1(pointer,x1); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x1))
       st1=ty1_chk_f(ty1(pointer,x1)); call ty1_chk_s(st1)
       st1=ty1(pointer,x2); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x2))
       st1=ty1_chk_f(ty1(pointer,x2)); call ty1_chk_s(st1)
       st1=ty1(pointer,x3//x4); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,x3//x4))
       st1=ty1_chk_f(ty1(pointer,x3//x4)); call ty1_chk_s(st1)
       st1=ty1(pointer,(/x3//x4/)); call ty1_chk_s(st1)
       call ty1_chk_s(d=ty1(pointer,(/x3//x4/)))
       st1=ty1_chk_f(ty1(pointer,(/x3//x4/))); call ty1_chk_s(st1)
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
       st2=ty1(pointer,x3//x4); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,x3//x4),ty1(pointer,x3//x4)/))
       st2=ty1_chk_f(ty1(pointer,x3//x4)); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x1/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x1/)),ty1(pointer,(/x1/))/))
       st2=ty1_chk_f(ty1(pointer,(/x1/))); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x2/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x2/)),ty1(pointer,(/x2/))/))
       st2=ty1_chk_f(ty1(pointer,(/x2/))); call ty1_chk_as(st2)
       st2=ty1(pointer,(/x3//x4/)); call ty1_chk_as(st2)
       call ty1_chk_as(d=(/ty1(pointer,(/x3//x4/)),
     1                     ty1(pointer,(/x3//x4/))/))
       st2=ty1_chk_f(ty1(pointer,(/x3//x4/))); call ty1_chk_as(st2)
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
         character(len=2) i 
         character(len=2) a(2)
       end type 
       type (ty1) :: st1
       pointer (ii,jj)
       character(len=2),dimension(2):: x=(/p2,p3/)
       character(len=2) j,jj
       ii=loc(j)
       j=p1
       st1=ty1(jj,x      )
       if (st1%i/=p1)print *,'fail'
       if (st1%a(1)/=p2)print *,'fail'
       if (st1%a(2)/=p3)print *,'fail'
      end
