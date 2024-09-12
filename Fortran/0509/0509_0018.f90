           type ty
           integer :: ii
           end type
           type(ty) :: obj
              block
               procedure(inn),pointer::p
p=>inn
               obj = p()
              end block
          print *,'pass'
           contains
             function inn() result(inn_res)
               type(ty) :: inn_res
inn_res%ii=0
             end function inn
          end
