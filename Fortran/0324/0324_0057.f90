subroutine sss()
call test01()
call test02()
print *,'pass'
end

module mod
contains
subroutine sub(i,j)
integer*1,intent(in):: i,j
if (ibset(1_1,7_1).ne.j) print *,'fail'
if (i.ne.j) print *,'fail'
end subroutine
recursive subroutine main()
end subroutine
end

subroutine test01()
use mod
integer*1:: i,j
parameter (j=ibset(1_1,7_1))
if (ibset(1_1,7_1).ne.j) print *,'fail'
call sub(ibset(1_1,7_1),j) 
end

subroutine ssss()
use mod
call main()
end


subroutine s_1(a,b)
 integer(1),intent(in)::a,b
  if (a.ne.b) print *,'fail'
end subroutine

subroutine test02()
integer(1) ri1007
parameter(ri1007=ibset(1_1,7_1))
  call s_1(ibset(1_1,7_1),ri1007)
end

module moda
contains
   recursive subroutine func(p)
   value p
   pointer(p,iq)
   iq=5
   end subroutine

   recursive subroutine main
   integer j
   external printf !$pragma c(printf)
   j=1
   call func(loc(j))
   if (.false.)call printf("j = %d\n\0",%val(j))
   end subroutine
end
use moda
call main()
call sss()
call ssss()
end

module modb
contains
   recursive subroutine func(p)
   value p
   pointer(p,iq)
   iq=5
   end subroutine

   recursive subroutine main1a
   integer j
   external printf !$pragma c(printf)
   j=1
   call func(loc(j))
   if (.false.)call printf("j = %d\n\0",%val(j))
   end subroutine
end
subroutine main1a()
call sssaa()
end
subroutine sssaa()
use modb
call main1a()
end
