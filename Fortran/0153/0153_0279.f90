subroutine s1
type x1
   integer::xv
end type
class(x1),allocatable::a
allocate(a)
n=1
associate (k=> n)
  goto 2
2 end associate
if (n==1) then
  goto 3
3 end if
select case (n)
 case (1)
  goto 4
4 end select
select type (a)
 type is(x1)
   goto 5
5 end select
  goto 6
6forall (k=1:3)
 end forall
  goto 7
7 where ([.true.])
 end where
end
call s1
print *,'pass'
end
