         function afun() result(r)
         type ty
           sequence
           character(len=512)   :: chk
         end type
           TYPE(ty) :: r
           entry afun1() result(r)
          r%chk='1'
         end function

         type ty
           sequence
           character(len=512)   :: chk
         end type
     type(ty):: a,afun,afun1
     a=afun()
     if (a%chk/='1') print *,101
     a=afun1()
     if (a%chk/='1') print *,102
     print *,'pass'
       end
