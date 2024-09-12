      module mod01
        type :: type01(k)
           integer,kind::k    
           integer :: x
        end type type01
      end module mod01

     module k3                  
        use mod01             
     contains
       subroutine sub (proc,p1,p2)  
         use mod01
         interface
           subroutine s1(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
         interface
           subroutine s2(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s2) :: p2
         interface
           subroutine s3(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s3) :: p1
            type(type01(2)) :: pv1
            type(type01(2)) :: pv2
            type(type01(2)) :: pv3
          call proc(pv1)
if (pv1%x/=1) print *,101
          call p2(pv2)
if (pv2%x/=1) print *,102
          call p1(pv3)
if (pv3%x/=1) print *,103
       end subroutine 
     end

     use k3                   
call tt
       print *,'pass'
     end 
           subroutine proc(p) 
            use mod01
            type(type01(2)) :: p
            p%x=1
           end subroutine 
           subroutine p2(p) 
            use mod01
            type(type01(2)) :: p
            p%x=1
           end subroutine 
           subroutine p1(p) 
            use mod01
            type(type01(2)) :: p
            p%x=1
           end subroutine 
subroutine tt
         use mod01
         use k3
         interface
           subroutine s1(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
         interface
           subroutine s2(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s2) :: p2
         interface
           subroutine s3(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s3) :: p1
call sub(proc,p1,p2)
end
