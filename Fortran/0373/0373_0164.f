           module mod                                                        aa
            real a1,b1                                                       aa
            contains
             subroutine sub1                                                 aa
              real x,y                                                       aa
              x=1;y=2                                                        aa
             end subroutine                                                  
           end module
           use mod
           real,dimension(10) :: a,b,c,d,e,f                                 aa
           integer,dimension(10) :: aa,bb
           data a/10*1/                                                      aa
           data b/10*1/                                                      aa
           data c/10*1/                                                      
           data d/10*1/                                                      
           data e/10*1/                                                      
           do i=1,10
             f(i) = a(i) * ((b(i)*c(i)) + (e(i) + d(i)))
           enddo
           call sub(aa,bb)
           print *,f
           contains
            subroutine sub(aa,bb)                                            aa
             integer aa(10),bb(10)
             do i=1,10
               bb(i) = i
               aa(i) = bb(i) * 4.0
             enddo 
            end subroutine
           end
