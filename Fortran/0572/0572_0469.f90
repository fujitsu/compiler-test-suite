integer::a
integer::arr(3:5,2:6)
i=func(a,arr)
if(i /= 1 )print*,201   
print*,"pass"
contains
 function func(b,brr)
    integer::b(..)
    integer::brr(..)
    func=rank(b)
    func =1
     if(lbound(brr,dim=1) /= 1)print*,106
     if(lbound(brr,dim=2) /= 1)print*,107
     if(size(lbound(brr)) /= 2)print*,108
    end function
 end
