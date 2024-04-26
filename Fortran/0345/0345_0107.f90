      function func()
       type aa
         integer(4)::ii
         real(4)::rr
       end type
       type(aa)::func
        func=aa(1.2,0)
      end function

      program main
       type aa
         integer(4)::ii
         integer(4)::kk
       end type
       type(aa)::str1=aa(0,0)
       type(aa),external::func
        str1=func()
        if (str1%ii/=1.or.str1%kk/=0) print *,str1
        print *,'pass'
      end program
