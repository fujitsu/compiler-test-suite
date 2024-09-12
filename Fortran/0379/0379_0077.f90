subroutine exsub01()
interface
  subroutine subsub1()
  end subroutine
  subroutine subsub2()
  end subroutine
  subroutine sub1() 
    interface
       subroutine subsub1()
       end subroutine
       subroutine subsub2()
       end subroutine
    end interface
  end subroutine
end interface
end subroutine
subroutine exsub02()
interface
  subroutine subsub1() bind(C,name="aaa")
  end subroutine
  subroutine subsub2() bind(C,name="bbb")
  end subroutine
  subroutine sub1() 
    interface
       subroutine subsub1() bind(C,name="aaa")
       end subroutine
       subroutine subsub2() bind(C,name="bbb")
       end subroutine
    end interface
  end subroutine
end interface
end subroutine

print *,'ok'
end
