subroutine sub()
  entry ent1(arg1,arg2) bind(C)
    interface
      subroutine exsub()
      end subroutine
    end interface
    procedure(exsub) :: arg1
    external :: arg2
end subroutine
end
