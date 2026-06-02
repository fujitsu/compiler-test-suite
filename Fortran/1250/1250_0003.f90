module m1
private::x
  procedure(d),pointer::x
  procedure(dd),private,pointer::w
  interface gen
   procedure::x,w
  end interface
    character,pointer,public::q1
    integer,pointer,public::q2
private
public::s,t,gen
  contains
    subroutine d(p)
    character(*),pointer::p
    if (p/='1')print *,801
    end subroutine
    subroutine dd(p)
    integer,pointer::p
    if (p/=1)print *,802
    end subroutine
    subroutine t
      block
         call gen(q1)
         call gen(q2)
      end block
    end 
    subroutine s
    x=>d
    w=>dd
    end 
end
use m1
implicit none
integer::x=1,w=1
if (x/=1) print *,9001
if (w/=1) print *,9002
call s
allocate(q1,source='1')
allocate(q2,source=1)
call gen(q1)
call gen(q2)
call t
print *,'sngg995o : pass'
end
