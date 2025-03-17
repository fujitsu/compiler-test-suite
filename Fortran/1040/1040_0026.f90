module m1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function

  subroutine s3
  xxx=f2c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
  end subroutine
  subroutine s2
  xxx=f2c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
  end subroutine
  subroutine sb()
  call isub()
  call isub2()
  contains
   subroutine isub()
   xxx=f2c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   xxx=f1c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   call s3
   end subroutine
   subroutine isub2()
   xxx=f2c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   xxx=f1c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   call s3
   end subroutine
  end subroutine
end

module m2
use m1
contains
subroutine s1()
call s3
end subroutine
subroutine s0()
call s3
 xxx=f2c(xxx)
 if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
 xxx=f1c(xxx)
 if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
call s3
end subroutine
subroutine sa()
call isub()
contains
 subroutine isub()
 xxx=f2c(xxx)
 if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
 xxx=f1c(xxx)
 if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
 call s3
 end subroutine
end subroutine
end

use m1
use m2
call s3
call s2
call s1
call s0
call sa
call sb
call test2
call test3
call isub()
print *,"pass"
contains
   subroutine isub()
   xxx=f2c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   xxx=f1c(xxx)
   if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
   call s3
   end subroutine
end


subroutine test2()
entry f2ca()
end

subroutine test3()
interface
function f1c(d) result(r)
  integer::d(:,:,:)
  integer::r(1,1,size(d))
end function
function f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(1,1,size(d))
end function
end interface
  integer::xxx(1,1,3)
  xxx=f2c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1,1) .ne. 1) write(6,*) "NG"
end
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(1,1,size(d))
  r=1
  end function
