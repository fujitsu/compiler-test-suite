subroutine s1(k)
 type base
   integer::x
 end type 
 type,extends(base)::ext
   integer::y
 end type
 class(base),pointer::p
 allocate(p)
p%x=10
 m=0
 select case (k)
   case (1)
     select type(p) 
       type is (base)
          if (p%x/=10) then
            m=100
          else
            m=1
          endif
       type is (ext)
          m=2
     end select
 end select
 if (m/=1) then
  print *,102
 endif
end
call s1(1)
print *,'pass'
end

     

