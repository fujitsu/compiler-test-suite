interface operator(*)
function a1(d1,d2)
integer::a1
character(len=*),intent(in) :: d1,d2
end function
end interface operator(*)
block
interface operator(*)
function a2(d1,d2)
integer::a2
character(len=*),intent(in) :: d1,d2
end function
end interface operator(*)
    block
    interface operator(*)
    function a3(d1,d2)
    integer::a3
    character(len=*),intent(in) :: d1,d2
    end function
    end interface operator(*)
    if(('ch'*'abc')/=7) print*,'121'
    if(a3('ch','abc')/=7) print*,'122'
    end block
  if(('ch'*'abc')/=8) print*,'123'
  if(a2('ch','abc')/=7) print*,'124'
end block
if(('ch'*'abc')/=9) print*,'125'
if(a1('ch','abc')/=10) print*,'126'
print*,"Pass"
end

function a1(d1,d2)
integer::a1
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a1=len(d1)*len(d2)+ii
ii=ii+1
end function
function a2(d1,d2)
integer::a2
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a2=len(d1)*len(d2)+ii
ii=ii+1
end function
function a3(d1,d2)
integer::a3
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a3=len(d1)*len(d2)+ii
ii=ii+1
end function
