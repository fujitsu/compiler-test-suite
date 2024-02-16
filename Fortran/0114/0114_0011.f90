  module xx
  contains
   subroutine sub()
     call ent1()
   end subroutine
   subroutine sub2()
    print *,'NG'
    entry ent1()
    print *,'OK'
   end subroutine
  end

  use xx
  call sub
  end

