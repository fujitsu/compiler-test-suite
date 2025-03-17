module m1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
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
  integer::xxx(1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:)
  integer::r(1,size(d))
  r=10
  end function

  subroutine s5
  xxx=f2c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  end subroutine
  subroutine s4
  xxx=f2c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  end subroutine
  subroutine sa()
  call isub()
  call isub2()
  contains
   subroutine isub()
   xxx=f2c(xxx)
   if (xxx(1,1) .ne. 10) write(6,*) "NG"
   xxx=f1c(xxx)
   if (xxx(1,1) .ne. 10) write(6,*) "NG"
   call s5
   end subroutine
   subroutine isub2()
   xxx=f2c(xxx)
   if (xxx(1,1) .ne. 10) write(6,*) "NG"
   xxx=f1c(xxx)
   if (xxx(1,1) .ne. 10) write(6,*) "NG"
   call s4
   end subroutine
  end subroutine
end

use m1
use m2
call s3
call s2
call s4
call s5
call sa
call sb
call test01()
print *,"pass"
end

module mod1
  integer::xxx(1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:)
  integer::r(1,size(d))
  r=10
  end function
  subroutine s5
  xxx=f2c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  xxx=f1c(xxx)
  if (xxx(1,1) .ne. 10) write(6,*) "NG"
  end subroutine
end

module mod2
  integer::xxx3(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  entry    f1ca(d) result(r)
  entry    f2ca(d) result(r)
  integer::d(:,:,:)
  integer::r(1,1,size(d))
  r=1
  end function
  subroutine s6
  xxx3=f2c(xxx3)
  if (xxx3(1,1,1) .ne. 1) write(6,*) "NG"
  xxx3=f1c(xxx3)
  if (xxx3(1,1,1) .ne. 1) write(6,*) "NG"
  end subroutine
end

subroutine test01()
use mod1
use mod2
call s5()
call s6()
  xxx3=f2ca(xxx3)
  if (xxx3(1,1,1) .ne. 1) write(6,*) "NG"
  xxx3=f1ca(xxx3)
  if (xxx3(1,1,1) .ne. 1) write(6,*) "NG"
end subroutine
