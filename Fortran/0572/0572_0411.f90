character(len=4)::ar(10)
integer::i
i=func(ar)
if(i /= 1 )print*,201        
contains
 function func(bb)
     character(len=4)::bb(..)
    func =1
    if(len(bb) /= 4)print*,101
     print*,'PASS'
    end function

 end
