             integer :: a(5),b(20),v(5)=[1,3,5,7,9]
             a=1;b=1
             b(1:9:2) = 30
             
             v=sub(a,b(v))
             if(any(v /= 31)) print*,"PASS"
             print*,"PASS"
             contains
             impure elemental function sub(i,j)
            integer:: i,j,sub
             intent(in) :: i
            intent(in) :: j
              sub = j+i
            end function
            end

