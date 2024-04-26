subroutine s(vv,pp)
interface
 function x() result(i)
 end function
end interface
procedure(x),pointer::p,pp
type st
 sequence
 integer::st1
 procedure(x),nopass,pointer::p
end type
type(st)::v,vv
interface
  subroutine s1(p)
    import x
    procedure(x),pointer::p
  end subroutine
end interface
v%p=> x
p=>x
vv%p=> x
pp=>x
if(p()/=2)print *,101
if(v%p()/=2)print *,102
if(pp()/=2)print *,101
if(vv%p()/=2)print *,102
call s1(p)
call s1(v%p)
call s1(pp)
call s1(vv%p)
end
interface
  subroutine s(vv,pp)
    interface
     function x() result(i)
     end function
    end interface
    procedure(x),pointer::p,pp
    type st
     sequence
     integer::st1
     procedure(x),nopass,pointer::p
    end type
    type(st)::v,vv
    interface
      subroutine s1(p)
        import x
        procedure(x),pointer::p
      end subroutine
    end interface
  end subroutine
end interface
procedure(x),pointer::p
type st
 sequence
 integer::st1
 procedure(x),nopass,pointer::p
end type
type(st)::v
   interface
    function x() result(i)
    end function
   end interface
call s(v,p)
print *,'pass'
end
 function x() result(i)
   i=2
 end function
  subroutine s1(p)
   interface
    function x() result(i)
    end function
   end interface
   procedure(x),pointer::p
   if(p()/=2)print *,301
  end subroutine

 
