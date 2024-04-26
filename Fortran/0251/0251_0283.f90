
integer::ii
interface Assignment(=)
subroutine sub(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
end subroutine
end interface Assignment(=)
block
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
    interface Assignment(=)
    subroutine sub2(d1,d2)
    integer,INTENT(OUT) :: d1
    character(len=*),intent(in) :: d2
    end subroutine
    end interface Assignment(=)
    ii= 'abc'
    if(ii==4)print*,"1:pass"
    end block
    block
    interface Assignment(=)
    subroutine sub2(d1,d2)
    integer,INTENT(OUT) :: d1
    character(len=*),intent(in) :: d2
    end subroutine
    end interface Assignment(=)
    ii= 'abc'
    if(ii==5)print*,"2:pass"
    end block
  if('ch'*'abc'==7)print*,"3:Pass"
  end block
  block
  interface operator(*)
  function a2(d1,d2)
  integer::a2
  character(len=*),intent(in) :: d1,d2
  end function
  end interface operator(*)
  if('ch'*'abc'==8)print*,"4:Pass"
  end block
end block
end

function a1(d1,d2)
integer::a1
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a1=len(d1)*len(d2)+ii
ii=ii+1
end function

subroutine sub(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
integer,save::ii=1
d1 = len(d2)+ii
ii=ii+1
end subroutine

function a2(d1,d2)
integer::a2
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a2=len(d1)*len(d2)+ii
ii=ii+1
end function

subroutine sub2(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
integer,save::ii=1
d1 = len(d2)+ii
ii=ii+1
end subroutine
