 integer,target:: t(2,3)=1
interface
  subroutine ss
  end
end interface
 procedure(ss)::ex
 integer,pointer::p(:,:)=> t
 type x
   integer,pointer::pp(:,:)=> t
   procedure(),nopass,pointer::pppp=> ex
 end type
 procedure(),pointer::ppp=> ex
type(x)::z
if (any(p/=1)) print *,101
if (any(z%pp/=1)) print *,101
call ppp()
call z%pppp()

print *,'pass'
end
  subroutine ex
  end
