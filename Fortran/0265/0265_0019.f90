module m0
interface 
   subroutine ss(k1)bind(c,name='ss2')
   integer::k1
   end
end interface
end


module z2
interface 
   subroutine ss(k1)
   integer::k1
   end
end interface
end

module A3
  integer::res=0
  interface 
   subroutine ss(k1)bind(c,name='ss3')
   integer::k1
   end
  end interface
contains
 subroutine sub0()
  call ss(res)
  if(res /=20)print*,'101'
 end subroutine

 subroutine sub1()
  use m0
  call ss(res)
  if(res /=30)print*,'102'
 end

 subroutine sub2()
  use z2
  call ss(res)
  if(res /=10)print*,'103'
 end

end module 


use A3
call sub1()
call sub2()

print*,"PASS"
end

   subroutine ss(k1)
   integer::k1
    k1=10
   end subroutine
  
   subroutine ss(k1)bind(c,name='ss3')
   integer::k1
    k1=20
   end subroutine

   subroutine ss(k1)bind(c,name='ss2')
   integer::k1
    k1=30
   end
