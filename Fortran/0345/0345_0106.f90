      function func(str)
       type aa
         integer(4)::ii
         integer(4)::jj
       end type
       type(aa)::str
        str=aa(1,2.0)
         func=1
      end function

      program main
       type aa
        sequence
         integer(4)::ii
         integer(4)::kk
       end type
       type(aa)::str2=aa(0,0)
        str1=func(str2)
        if (str1/=1) print *,str1
        if (str2%ii/=1.or.str2%kk/=2) print *,str2
        print *,'pass'
      end program
