integer,parameter::k=70000
character(len=*),parameter::p(9)=(/'1','2','3','4','5','6','7','8','9'/)
character(len=k),target:: ca1(2),cs1,da1(2),ds1
character(len=k),allocatable,dimension(:)::ca2,da2
character(len=k),pointer,dimension(:)::ca3,da3
character(len=k),pointer             ::cs2,ds2
allocate(ca2(2),da2(2))
allocate(ca3(2),da3(2))
allocate(cs2   ,ds2   )
do kk=1,k
 do kn=1,2
  select case(kn)
    case (1); j=1
    case (2); j=2
  end select
  ca1(kn)(kk:kk)=p(j)
  select case(kn)
    case (1); j=4
    case (2); j=5
  end select
  ca2(kn)(kk:kk)=p(j)
  select case(kn)
    case (1); j=6
    case (2); j=7
  end select
  ca3(kn)(kk:kk)=p(j)
 end do
 cs1   (kk:kk)='3'
 cs2   (kk:kk)='8'
end do
if (len(ca1)/=k)write(6,*) "NG"
if (len(ca2)/=k)write(6,*) "NG"
if (len(ca3)/=k)write(6,*) "NG"
if (len(cs1)/=k)write(6,*) "NG"
if (len(cs2)/=k)write(6,*) "NG"
if (ca1(1)/=repeat(p(1),k))write(6,*) "NG"
if (ca1(2)/=repeat(p(2),k))write(6,*) "NG"
if (ca2(1)/=repeat(p(4),k))write(6,*) "NG"
if (ca2(2)/=repeat(p(5),k))write(6,*) "NG"
if (ca3(1)/=repeat(p(6),k))write(6,*) "NG"
if (ca3(2)/=repeat(p(7),k))write(6,*) "NG"
call chka(ca1,(/'1','2'/))
call chka(ca2,(/'4','5'/))
call chka(ca3,(/'6','7'/))
call chks(cs1,'3')
call chks(cs2,'8')
call chka2(ca1//ca1,(/'1','2'/))
call chka2(ca2//ca2,(/'4','5'/))
call chka2(ca3//ca3,(/'6','7'/))
call chks2(cs1//cs1,'3')
call chks2(cs2//cs2,'8')
da1=ca1
da2=ca2
da3=ca3
ds1=cs1
ds2=cs2
if (len(da1)/=k)write(6,*) "NG"
if (len(da2)/=k)write(6,*) "NG"
if (len(da3)/=k)write(6,*) "NG"
if (len(ds1)/=k)write(6,*) "NG"
if (len(ds2)/=k)write(6,*) "NG"
if (da1(1)/=repeat(p(1),k))write(6,*) "NG"
if (da1(2)/=repeat(p(2),k))write(6,*) "NG"
if (da2(1)/=repeat(p(4),k))write(6,*) "NG"
if (da2(2)/=repeat(p(5),k))write(6,*) "NG"
if (da3(1)/=repeat(p(6),k))write(6,*) "NG"
if (da3(2)/=repeat(p(7),k))write(6,*) "NG"
call chka(da1,(/'1','2'/))
call chka(da2,(/'4','5'/))
call chka(da3,(/'6','7'/))
call chks(ds1,'3')
call chks(ds2,'8')
da1='';da2='';da3='';ds1='';ds2=''
if (any(da1/=' '))write(6,*) "NG"
if (any(da2/=''))write(6,*) "NG"
if (any(da3/='                             '))write(6,*) "NG"
if (ds1/=' ')write(6,*) "NG"
if (ds2/='')write(6,*) "NG"
iu=11
write(iu,'(a)') ca1(1)
write(iu,'(a)') ca1(2)
rewind iu
read(iu,'(a)') da1(1)
read(iu,'(a)') da1(2)
call chka(da1,(/'1','2'/))
iu=iu+1
write(iu,'(a)') (ca2(iu3),iu3=1,2)
rewind iu
read(iu,'(a)') (da2(iu3),iu3=1,2)
call chka(da2,(/'4','5'/))
iu=iu+1
write(iu,'(a)') ca3,cs1,cs2
rewind iu
read(iu,'(a)') da3,ds1,ds2
call chka(da3,(/'6','7'/))
call chks(ds1,'3')
call chks(ds2,'8')
da1='';da2='';da3='';ds1='';ds2=''
iu=iu+1
write(iu) ca1(1)
write(iu) ca1(2)
rewind iu
read(iu) da1(1)
read(iu) da1(2)
call chka(da1,(/'1','2'/))
iu=iu+1
write(iu) (ca2(iu3),iu3=1,2)
rewind iu
read(iu) (da2(iu3),iu3=1,2)
call chka(da2,(/'4','5'/))
print *,'pass'
contains
subroutine chka(a1,a2)
character(*) a1(:),a2(:)
if (len(a1)/=k)write(6,*) "NG"
if (len(a2)/=1)write(6,*) "NG"
if (any(shape(a1)/=(/2/)))write(6,*) "NG"
if (any(shape(a2)/=(/2/)))write(6,*) "NG"
do ij1=1,size(a1)
  if (a1(ij1)/=repeat(a2(ij1),k))write(6,*) "NG"
  if (len_trim(a1(ij1))/=k)write(6,*) "NG"
  if (trim(a1(ij1))/=repeat(a2(ij1),k))write(6,*) "NG"
end do
end subroutine
subroutine chks(a1,a2)
character(*) a1,a2
if (len(a1)/=k)write(6,*) "NG"
if (len(a2)/=1)write(6,*) "NG"
if (a1/=repeat(a2,k))write(6,*) "NG"
if (len_trim(a1)/=k)write(6,*) "NG"
if (trim(a1)/=repeat(a2,k))write(6,*) "NG"
end subroutine
subroutine chka2(a1,a2)
character(*) a1(:),a2(:)
if (len(a1)/=k*2)write(6,*) "NG"
if (len(a2)/=1)write(6,*) "NG"
if (any(shape(a1)/=(/2/)))write(6,*) "NG"
if (any(shape(a2)/=(/2/)))write(6,*) "NG"
do ij1=1,size(a1)
  if (a1(ij1)/=repeat(a2(ij1),k*2))write(6,*) "NG"
  if (len_trim(a1(ij1))/=k*2)write(6,*) "NG"
  if (trim(a1(ij1))/=repeat(a2(ij1),k*2))write(6,*) "NG"
end do
end subroutine
subroutine chks2(a1,a2)
character(*) a1,a2
if (len(a1)/=k*2)write(6,*) "NG"
if (len(a2)/=1)write(6,*) "NG"
if (a1/=repeat(a2,k*2))write(6,*) "NG"
if (len_trim(a1)/=k*2)write(6,*) "NG"
if (trim(a1)/=repeat(a2,k*2))write(6,*) "NG"
end subroutine
end
