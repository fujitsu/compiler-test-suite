subroutine exsub1()
interface
  subroutine sub1()
  end subroutine
  subroutine sub2() 
    interface
       subroutine sub1()
       end subroutine
    end interface
  end subroutine
end interface
end
subroutine exsub2()
interface
  subroutine sub1() bind(C,name="proc")
  end subroutine
  subroutine sub2() bind(C)
    interface
       subroutine sub3() bind(C,name="proc")
       end subroutine
    end interface
  end subroutine
end interface
end

print *,'ok'
end
