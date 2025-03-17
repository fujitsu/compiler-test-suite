module m1
  integer::xxx(1,1,3)
  contains
  recursive function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  if (1.eq.2) then
    xxx=f2c(xxx)
    xxx=f1c(xxx)
  end if
  end function
end

subroutine test01()
use m1
xxx=f1c(xxx)
xxx=f2c(xxx)
end


call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

module m2
  integer::xxx(1,1,3)
  contains
  recursive function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function
  subroutine subb()
   interface fff
    module procedure f1c
   end interface
    xxx=fff(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
    xxx=f1c(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
  end subroutine
end

subroutine test02()
use m2
call subb()
end


module m3
  integer::xxx(1,1,3)
  contains
  recursive function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function
  subroutine subb()
   interface fff
    module procedure f2c
   end interface
    xxx=fff(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
    xxx=f1c(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
  end subroutine
end

subroutine test03()
use m3
call subb()
end

module m41
  integer::xxx(1,1,3)
  contains
  recursive function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function
end
module m4
use m41
contains
  recursive function f1ca(d) result(r)
  entry    f2ca(d) result(r)
  integer::d(5:,5:)
  integer::r(1,size(d))
  r=2
  end function
  subroutine subb()
   interface fff
    module procedure f2c
    module procedure f2ca
    recursive function f1cb(d) result(r)
     integer::d(5:)
     integer::r(size(d))
     end function
   end interface
    xxx=fff(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
    xxx(1:,1:,1)=fff(xxx(1:,1:,1))
    if (xxx(1,1,1).ne.2) write(6,*) "NG"
    xxx(1:,1,1)=fff(xxx(1:,1,1))
    if (xxx(1,1,1).ne.3) write(6,*) "NG"
    xxx=f1c(xxx)
    if (xxx(1,1,1).ne.1) write(6,*) "NG"
  end subroutine
end

    recursive function f1cb(d) result(r)
     integer::d(5:)
     integer::r(size(d))
r=3
     end function

subroutine test04()
use m4
call subb()
end

