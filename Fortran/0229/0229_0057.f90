      module mod01    
        type :: type01 
           integer :: x
        end type 
      end 
      module nod    
        type :: type01
           integer :: z
        end type 
      end 
      module kod    
        type :: type01
           integer :: y
        end type 
      end 
      module xod    
        type :: type01
           integer :: w
        end type 
      end 
     
     module k3
     contains
       subroutine sub (p,p1,p12,p123)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
           function   p1()  result(r)
            use nod
            type(type01) :: r
           end function
           function   p12()  result(r)
            use kod
            type(type01) :: r
           end function
           function   p123()  result(r)
            use xod
            type(type01) :: r
           end function
         end interface
         call s1(p())
         call t1(p1())
         call u1(p12())
         call v1(p123())
       end subroutine
       subroutine s1(d)
            use mod01
            type(type01) :: d
          if (d%x/=1)print *,8001
       end subroutine
       subroutine t1(d)
            use nod
            type(type01) :: d
          if (d%z/=1)print *,8002
       end subroutine
       subroutine u1(d)
            use kod
            type(type01) :: d
          if (d%y/=1)print *,8003
       end subroutine
       subroutine v1(d)
            use xod
            type(type01) :: d
          if (d%w/=1)print *,8004
       end subroutine
     end
           function   p() 
            use mod01
            type(type01) :: p
             p%x=1
           end function
           function   p1()  result(r)
            use nod
            type(type01) :: r
             r%z=1
           end function
           function   p12()  result(r)
            use kod
            type(type01) :: r
             r%y=1
           end function
           function   p123()  result(r)
            use xod
            type(type01) :: r
             r%w=1
           end function
subroutine dd
     use k3,only:sub
         interface
           function   p() 
            use mod01
            type(type01) :: p
           end function
           function   p1()  result(r)
            use nod
            type(type01) :: r
           end function
           function   p12()  result(r)
            use kod
            type(type01) :: r
           end function
           function   p123()  result(r)
            use xod
            type(type01) :: r
           end function
         end interface
   call sub(p,p1,p12,p123)
end
    
     use k3
  call dd
       print *,'pass'
     end 
