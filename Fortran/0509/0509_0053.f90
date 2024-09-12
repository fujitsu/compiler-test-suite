subroutine s1
     block
     procedure(inn),pointer::p
p=>inn
if (p()/=1) print *,101
     end block
  contains
    function inn() result(inn_res)
      integer:: inn_res
      inn_res=1
    end function inn
  end 
call s1
print *,'pass'
end
