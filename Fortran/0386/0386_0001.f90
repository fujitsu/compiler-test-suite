integer,parameter::ii8  =      int(2,8)
integer,parameter::iik8 = kind(int(2,8))
integer,parameter::ii4  =      int(2,4)
integer,parameter::iik4 = kind(int(2,4))
integer,parameter::ii2  =      int(2,2)
integer,parameter::iik2 = kind(int(2,2))
integer,parameter::ii1  =      int(2,1)
integer,parameter::iik1 = kind(int(2,1))
integer,parameter::ii0  =      int(2)
integer,parameter::iik0 = kind(int(2))

if ( ii8 == 2    .and. iik8 == 8    .and. &
     ii4 == 2    .and. iik4 == 4    .and. &
     ii2 == 2    .and. iik2 == 2    .and. &
     ii1 == 2    .and. iik1 == 1    .and. &
     ii0 == 2                             &
     ) then
  print *,'pass'
else
  print *,'ng'
  print *,int(2,8),kind(int(2,8))
  print *,ii8,iik8
  print *,int(2,4),kind(int(2,4))
  print *,ii4,iik4
  print *,int(2,2),kind(int(2,2))
  print *,ii2,iik2
  print *,int(2,1),kind(int(2,1))
  print *,ii1,iik1
  print *,int(2),kind(int(2))
  print *,ii0,iik0
endif
end
