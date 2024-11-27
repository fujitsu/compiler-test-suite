subroutine sub1(arg1)
 implicit none
 value:: arg1
 character(len=1):: arg1
 if( arg1 /= 'a') write(6,*) "NG"
end subroutine

subroutine sub2(arg1)
 implicit none
 integer,parameter::ip=1
 character(len=ip),value:: arg1
 if( arg1 /= 'a') write(6,*) "NG"
end subroutine

subroutine sub3(arg1)
 implicit none
 value:: arg1
 character(len=1):: arg1
 call sub3_1('a')
 if( arg1 /= 'a') write(6,*) "NG"
 contains
  subroutine sub3_1(arg2)
    value:: arg2
    character(len=1):: arg2
    if( arg2 /= 'a') write(6,*) "NG"
  end subroutine
end subroutine

subroutine sub4(arg1)
 implicit none
 character(len=1),value:: arg1
 call sub4_1('a')
 if( arg1 /= 'a') write(6,*) "NG"
 contains
  subroutine sub4_1(arg2)
    character(len=1),value:: arg2
    if( arg2 /= 'a') write(6,*) "NG"
  end subroutine
end subroutine

interface
subroutine sub1(arg1)
 implicit none
 value:: arg1
 character(len=1):: arg1
end subroutine
subroutine sub2(arg1)
 implicit none
 integer,parameter::ip=1
 character(len=ip),value:: arg1
end subroutine
subroutine sub3(arg1)
 implicit none
 value:: arg1
 character(len=1):: arg1
end subroutine
subroutine sub4(arg1)
 implicit none
 character(len=1),value:: arg1
end subroutine
end interface

call sub1('a')
call sub2('a')
call sub3('a')
call sub4('a')
print *, 'pass'
end
