module m0
interface 
   function ss()result(k1) bind(c,name='ss2')
   integer::k1
   end
end interface
end


module z2
interface 
   function ss()result(k1)
   integer::k1
   end
end interface
end

module A3
  interface 
   function ss()result(k1)bind(c,name='ss3')
   integer::k1
   end
  end interface
contains
 subroutine sub0()
  if(ss() /=20)print*,'101'
 end 

 subroutine sub1()
  use m0
  if(ss() /=30)print*,'102'
 end

 subroutine  sub2()
  use z2
  if(ss() /=10)print*,'103'
 end

end module 


use A3
call sub1()
call sub2()

print*,"PASS"
end

   function ss()result(k1)
   integer::k1
    k1=10
   end function
  
   function ss()result(k1)bind(c,name='ss3')
   integer::k1
    k1=20
   end function

   function ss()result(k1)bind(c,name='ss2')
   integer::k1
    k1=30
   end
