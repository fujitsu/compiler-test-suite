subroutine exsub01()
interface
  subroutine sub1() 
    interface
       subroutine subsub1()
       end subroutine
       subroutine subsub2()
       end subroutine
    end interface
  end subroutine
  subroutine sub2()
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
  subroutine sub1() bind(C,name="aaa1")
    interface
       subroutine subsub1() bind(C,name="bbb")
       end subroutine
       subroutine subsub2() bind(C,name="ccc")
       end subroutine
    end interface
  end subroutine
  subroutine sub2() bind(C,name="aaa2")
    interface
       subroutine subsub3() bind(C,name="bbb")
       end subroutine
       subroutine subsub4() bind(C,name="ccc")
       end subroutine
    end interface
  end subroutine
end interface
end 

print *,'ok'
end
