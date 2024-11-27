call s1
print *,'pass'
end
module m1
contains
subroutine ss0(        )
interface
  function j4_f(p) result(a)
     character(kind=1),pointer:: a
     character(kind=1,len=*),pointer,optional::p
  end function
end interface
entry      ss1(j4_f,ii )
entry      ss2(j4_f,ii )
optional ::j4_f
character,pointer::x1
character,allocatable,dimension(:,:)::x2
allocate (x1);x1='1'
allocate (x2(2,2));x2=reshape((/'1','2','3','4'/),(/2,2/))
if (present(j4_f))then
  if (ii/=1)write(6,*) "NG"
  x1=>j4_f(x1);if (x1/='1')write(6,*) "NG"
  if (.not.associated(x1,j4_f(x1)))write(6,*) "NG"
  x1=>j4_f(  );if (x1/='a')write(6,*) "NG"
else
  if (ii/=0)write(6,*) "NG"
endif
return
entry      ss3(        )
end subroutine
subroutine tt0(        )
interface
  function j4_f(p) result(a)
     character(kind=1),allocatable,dimension(:,:):: a
     character(kind=1,len=*),allocatable,optional::p(:,:)
  end function
end interface
entry      tt1(j4_f,ii )
entry      tt2(j4_f,ii )
optional ::j4_f
character,pointer::x1
character,allocatable,dimension(:,:)::x2
allocate (x1);x1='1'
allocate (x2(2,2));x2=reshape((/'1','2','3','4'/),(/2,2/))
if (present(j4_f))then
  if (ii/=1)write(6,*) "NG"
  x2=j4_f(x2)
  if (any(x2/= reshape((/'1','2','3','4'/),(/2,2/))))write(6,*) "NG"
  x2=j4_f(  )
  if (any(x2/= reshape((/'a','b','c','d'/),(/2,2/))))write(6,*) "NG"
else
  if (ii/=0)write(6,*) "NG"
endif
return
entry      tt3(        )
End subroutine
end module
module interface
interface
  function j4_ff(p) result(a)
     character(kind=1),pointer:: a
     character(kind=1,len=*),pointer,optional::p
  end function
  function j4_fx(p) result(a)
     character(kind=1),allocatable,dimension(:,:):: a
     character(kind=1,len=*),allocatable,optional::p(:,:)
  end function
end interface
end module
subroutine s1
use    m1
use    interface
call ss1(j4_ff,ii=1)
call ss1(      ii=0)
call ss2(j4_ff,ii=1)
call ss2(      ii=0)
call ss3
call tt1(j4_fx,ii=1)
call tt1(      ii=0)
call tt2(j4_fx,ii=1)
call tt2(      ii=0)
call tt3
end
function j4_ff(p) result(a)
  character(kind=1),pointer:: a
  character(kind=1,len=*),pointer,optional::p
  if (present(p)) then; a=>p
  else ; allocate (a);a='a'
  end if
end function
function j4_fx(p) result(a)
  character(kind=1),allocatable,dimension(:,:):: a
  character(kind=1,len=*),allocatable,optional::p(:,:)
  allocate (a(2,2))
  if (present(p)) then; a=p
  else 
   a=reshape((/'a','b','c','d'/),(/2,2/))
  end if
end function

