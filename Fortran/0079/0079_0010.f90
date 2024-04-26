module m
  INTERFACE
     module subroutine sub_1
     END subroutine
     module subroutine sub_2
     END subroutine
     module subroutine sub_3
     END subroutine
    module subroutine sub_4
    END subroutine
  END INTERFACE
end
submodule(m)smod
contains
     module subroutine sub_3
     END subroutine
     module subroutine sub_1
     call sub_2()
     call sub_3()
     call sub_4()
     END subroutine
     module subroutine sub_4
     END subroutine
end
submodule(m:smod)smod2
contains
     module subroutine sub_2
     call sub_3()
     END subroutine
end


use m
call sub_1()
print *,'pass'
end
