       module mod
       interface aaa   
        subroutine aaa()  
        end subroutine
       end interface
	contains
	subroutine sub1()
	entry ent(aaa) 
        end subroutine
       end module
       end
