      program main
       type ty1 
         complex*32 ::c32 =1
       end type 
       type (ty1) :: str
       integer aaa(10)
        call ss10(kind(-(/str%c32/)))                               
        print *,'pass'
       contains
        subroutine ss10(i)
         integer*4  i
          if (i.ne.16) write(6,*) "NG"
        end subroutine
      end
