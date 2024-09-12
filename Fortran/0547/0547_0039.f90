module m1
  type x1
     integer::x11=11
  end type
  type,extends(x1)::x2
     integer::x21=21
  end type
  type y1
    integer::y11=2
    class(x1),pointer:: y12(:)=>null()
    class(x1),allocatable::y13(:)
    class(* ),pointer:: y14(:)=>null()
    class(* ),allocatable::y15(:)
    class(x1),pointer:: y16=>null()
    class(x1),allocatable::y17
    class(* ),pointer:: y18=>null()
    class(* ),allocatable::y19
    integer::y20=3
  end type
  type,extends(y1)::y2
     integer::y21
  end type
end
subroutine s1
use m1
type (y2):: t1
type(x1),pointer:: z1,z2(:)
type(x2),pointer:: w1,w2(:)

t1  = y2(y21=21, &
    y11=11, y12=null() , y13=null() , y14=null(z2) , y15=null(),&
            y16=null() , y17=null() , y18=null(z1) , y19=null(),y20=20)

if (t1%y11/=11) print *,101
if (t1%y21/=21) print *,102
if (t1%y20/=20) print *,109

t1  = y2(y21=21, &
    y11=11, y12=null() , y13=null() , y14=null() , y15=null(),&
            y16=null() , y17=null() , y18=null() , y19=null(),y20=20)
if (t1%y11/=11) print *,101
if (t1%y21/=21) print *,102
if (t1%y20/=20) print *,109

allocate(w1,w2(2))
t1  = y2(y21=21, &
    y11=11, y12=null() , y13=null() , y14=w2 , y15=w2,&
            y16=null() , y17=null() , y18=w1, y19=w1,y20=20)
k=0
select type (p=>t1%y14)
  type is(x2)
    k=1
end select
if (k/=1) print *,3102
k=0
select type (p=>t1%y15)
  type is(x2)
    k=1
end select
if (k/=1) print *,3105
k=0
select type (p=>t1%y18)
  type is(x2)
    k=1
end select
if (k/=1) print *,3108
k=0
select type (p=>t1%y19)
  type is(x2)
    k=1
end select
if (k/=1) print *,3109


k=0
allocate(t1%y12(0))
select type (p=>t1%y12)
  type is(x1)
    k=1
end select
if (k/=1) print *,102
k=0
select type (p=>t1%y13)
  type is(x1)
    k=1
end select
if (k/=1) print *,103
k=0
allocate(t1%y16)
select type (p=>t1%y16)
  type is(x1)
    k=1
end select
if (k/=1) print *,106
k=0
select type (p=>t1%y17)
  type is(x1)
    k=1
end select
if (k/=1) print *,107
if (.not.associated(t1%y12)) print *,112
if (allocated(t1%y13)) print *,113
if (.not.associated(t1%y14)) print *,114
if (.not.allocated(t1%y15)) print *,115
if (.not.associated(t1%y16)) print *,116
if (allocated(t1%y17)) print *,117
if (.not.associated(t1%y18)) print *,118
if (.not.allocated(t1%y19)) print *,119
deallocate(t1%y15)
deallocate(t1%y19)
allocate(x1::t1%y12(-2:-1))
allocate(x1::t1%y13(-2:-1))
allocate(x1::t1%y14(-2:-1))
allocate(x1::t1%y15(-2:-1))
allocate(x1::t1%y16       )
allocate(x1::t1%y17       )
allocate(x1::t1%y18       )
allocate(x1::t1%y19       )
k=0
select type (p=>t1%y12)
  type is(x1)
    k=1
    if (any(ubound(p)/=-1)) print *,132
    associate(pp=>p%x11)
     if (any(pp/=11)) print *,142
    end associate
end select
if (k/=1) print *,122
k=0
select type (p=>t1%y13)
  type is(x1)
    if (any(ubound(p)/=-1)) print *,133
    associate(pp=>p%x11)
     if (any(pp/=11)) print *,143
    end associate
    k=1
end select
if (k/=1) print *,123
k=0
select type (p=>t1%y14)
  type is(x1)
    if (any(ubound(p)/=-1)) print *,134
    k=1
    associate(pp=>p%x11)
     if (any(pp/=11)) print *,144
    end associate
end select
if (k/=1) print *,124
k=0
select type (p=>t1%y15)
  type is(x1)
    k=1
    if (any(ubound(p)/=-1)) print *,135
    associate(pp=>p%x11)
     if (any(pp/=11)) print *,145
    end associate
end select
if (k/=1) print *,125
k=0
select type (p=>t1%y16)
  type is(x1)
    k=1
    associate(pp=>p%x11)
     if (   (pp/=11)) print *,146
    end associate
end select
if (k/=1) print *,126
k=0
select type (p=>t1%y17)
  type is(x1)
    k=1
    associate(pp=>p%x11)
     if (   (pp/=11)) print *,147
    end associate
end select
if (k/=1) print *,127
k=0
select type (p=>t1%y18)
  type is(x1)
    k=1
    associate(pp=>p%x11)
     if (   (pp/=11)) print *,148
    end associate
end select
if (k/=1) print *,128
k=0
select type (p=>t1%y19)
  type is(x1)
    k=1
    associate(pp=>p%x11)
     if (   (pp/=11)) print *,149
    end associate
end select
if (k/=1) print *,129
!
deallocate(t1%y12)
deallocate(t1%y13)
deallocate(t1%y14)
deallocate(t1%y15)
deallocate(t1%y16       )
deallocate(t1%y17       )
deallocate(t1%y18       )
deallocate(t1%y19       )
!
allocate(x2::t1%y12(-2:-1))
allocate(x2::t1%y13(-2:-1))
allocate(x2::t1%y14(-2:-1))
allocate(x2::t1%y15(-2:-1))
allocate(x2::t1%y16       )
allocate(x2::t1%y17       )
allocate(x2::t1%y18       )
allocate(x2::t1%y19       )
k=0
select type (p=>t1%y12)
  type is(x2)
    k=1
    if (any(ubound(p)/=-1)) print *,1132
    associate(pp=>p%x11,p2=>p%x21)
     if (any(pp/=11)) print *,1142
     if (any(p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1122
k=0
select type (p=>t1%y13)
  type is(x2)
    if (any(ubound(p)/=-1)) print *,1133
    associate(pp=>p%x11,p2=>p%x21)
     if (any(pp/=11)) print *,1143
     if (any(p2/=21)) print *,2142
    end associate
    k=1
end select
if (k/=1) print *,1123
k=0
select type (p=>t1%y14)
  type is(x2)
    if (any(ubound(p)/=-1)) print *,1134
    k=1
    associate(pp=>p%x11,p2=>p%x21)
     if (any(pp/=11)) print *,1144
     if (any(p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1124
k=0
select type (p=>t1%y15)
  type is(x2)
    k=1
    if (any(ubound(p)/=-1)) print *,1135
    associate(pp=>p%x11,p2=>p%x21)
     if (any(pp/=11)) print *,1145
     if (any(p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1125
k=0
select type (p=>t1%y16)
  type is(x2)
    k=1
    associate(pp=>p%x11,p2=>p%x21)
     if (   (pp/=11)) print *,1146
     if (   (p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1126
k=0
select type (p=>t1%y17)
  type is(x2)
    k=1
    associate(pp=>p%x11,p2=>p%x21)
     if (   (pp/=11)) print *,1147
     if (   (p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1127
k=0
select type (p=>t1%y18)
  type is(x2)
    k=1
    associate(pp=>p%x11,p2=>p%x21)
     if (   (pp/=11)) print *,1148
     if (   (p2/=21)) print *,2142
    end associate
end select
if (k/=1) print *,1128
k=0
select type (p=>t1%y19)
  type is(x2)
    k=1
    associate(pp=>p%x11,p2=>p%x21)
     if (   (pp/=11)) print *,1149
     if (   (p2/=21)) print *,2142
    end associate
end select
end
call s1
print *,'pass'
end
   

