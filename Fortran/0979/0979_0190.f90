call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

module m1
 contains
  function fun(iii) result (ret)
    integer :: ret
    integer,value :: iii
    integer :: jjj
    ret = iii
    return
    entry ent(jjj) result (ret)
    ret = jjj
  end function
 end
 subroutine test01()
 use m1
 if (fun(1)/=1)write(6,*) "NG"
 if (ent(2)/=2)write(6,*) "NG"
 end

module m2
 contains
  function fun(iii) result (ret)
    integer :: ret
    integer,value :: iii
    ret = iii
    return
    entry ent() result (ret)
    ret = 2
  end function
 end
 subroutine test02()
 use m2
 if (fun(1)/=1)write(6,*) "NG"
 if (ent()/=2)write(6,*) "NG"
 end

 subroutine test03()
interface
  function ifun(iii) result (ret)
    integer :: ret
    integer,value :: iii
  end function
  function ient(jjj) result (ret)
    integer :: ret
    integer :: jjj
  end function
end interface
 if (ifun(1)/=1)write(6,*) "NG"
 if (ient(2)/=2)write(6,*) "NG"
 end
  function ifun(iii) result (ret)
    integer :: ret
    integer,value :: iii
    integer :: jjj
    ret = iii
    return
    entry ient(jjj) result (ret)
    ret = jjj
  end function

 subroutine test04()
interface
  function jfun(iii) result (ret)
    integer :: ret
    integer,value :: iii
  end function
  function jent() result (ret)
    integer :: ret
  end function
end interface
 if (jfun(1)/=1)write(6,*) "NG"
 if (jent()/=2)write(6,*) "NG"
 end
  function jfun(iii) result (ret)
    integer :: ret
    integer,value :: iii
    ret = iii
    return
    entry jent() result (ret)
    ret = 2
  end function

