integer,target::trg=10000
fun(2,b=f(),c=g())=10
if (trg /=10 ) print *,101
print *,"Pass"
contains
         function fun(a,b,c)
         integer, pointer::fun
         integer :: a,b,c
         if (a >0 .and. b>0 .and. c>0) then
         fun=>trg
         endif
         end function
        function f()
        integer::f
        f=2
        end function    
        function g()
        integer::g
        g=2
        end function    
end

