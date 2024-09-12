integer,parameter::ii8  =      int(B"10",8)
integer,parameter::iik8 = kind(int(B"10",8))
integer,parameter::ii4  =      int(B"10",4)
integer,parameter::iik4 = kind(int(B"10",4))
integer,parameter::ii2  =      int(B"10",2)
integer,parameter::iik2 = kind(int(B"10",2))
integer,parameter::ii1  =      int(B"10",1)
integer,parameter::iik1 = kind(int(B"10",1))
integer,parameter::ii0  =      int(B"10")
integer,parameter::iik0 = kind(int(B"10"))

if ( ii8 == 2    .and. iik8 == 8    .and. &
     ii4 == 2    .and. iik4 == 4    .and. &
     ii2 == 2    .and. iik2 == 2    .and. &
     ii1 == 2    .and. iik1 == 1    .and. &
     ii0 == 2                             &
     ) then
  print *,'pass'
else
  print *,'ng'
  print *,int(B"10",8),kind(int(B"10",8))
  print *,ii8,iik8
  print *,int(B"10",4),kind(int(B"10",4))
  print *,ii4,iik4
  print *,int(B"10",2),kind(int(B"10",2))
  print *,ii2,iik2
  print *,int(B"10",1),kind(int(B"10",1))
  print *,ii1,iik1
  print *,int(B"10"),kind(int(B"10"))
  print *,ii0,iik0
endif
end
