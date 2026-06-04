         1 integer, pointer,dimension(:,:) :: a
           allocate(a(10,10)) 
        2 a=100
        3 call sub(a)      
          print*,"PASS"
        4 contains
        5     subroutine sub(ii)
        6         integer,dimension(10,10) :: ii
        7         volatile :: ii
                 if(any(ii /= 100))print*,"102"
        8     end subroutine
        9 end

