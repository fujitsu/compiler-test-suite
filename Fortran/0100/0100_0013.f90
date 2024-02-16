type ty
complex(2) :: c4=(3,5)
complex(2) :: c5=(4,6)
end type 
type(ty) :: obj
complex(2) :: c2_1(2)
complex(2) :: c2_2(2)
complex(2) :: c3
c2_1=(5,8)
c2_2=(5,8)
c3=(7,9)
if((c2_1(1) .eq. c2_2(2)))print*,"pass"
if((c2_1(1) == c2_2(2)))print*,"pass"

if(c2_1(1) .ne. c3)print*,"pass"
if(any(c2_1 /= c3))print*,"pass"

if(obj%c4%re .lt. c3%re)print*,"pass"
if(obj%c4%im < c3%im)print*,"pass"

if(c2_1(2)%re+1 .le. c3%im)print*,"pass"
if(c2_1(2)%re+1 <= c3%re)print*,"pass"

if( obj%c5%im .gt. obj%c4%im)print*,"pass"
if( obj%c5%re > obj%c4%re)print*,"pass"

if( obj%c5%re+1 .ge. c2_1(1)%im)print*,"pass"
if( obj%c5%re+1 >=   c2_1(1)%im)print*,"pass"

end
