call test01()
print *,'pass'
end

subroutine  test01()
type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(2)
end type
type(ty2) :: str
integer arr(10)
integer a1(4)
integer,parameter :: a2(4)=(/1,2,3,4/)
integer a3(2),a4(2)
data a1 /1,2,3,4/
data a3 /1,2/
data a4 /3,4/

allocate(str%sss1(1)%arr(2))
allocate(str%sss1(2)%arr(2))

str=ty2((/ty1(a1(a3)),ty1(a1(a4))/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/ty1(a2(1:2)),ty1(a2(3:4))/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/ty1(a1(1:2)),ty1(a1(3:4))/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/ty1(a3),ty1(a4)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/ty1((/1,2/)),ty1((/3,4/))/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/(ty1(a1(a3)),ty1(a1(a4)),jj=1,1)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/(ty1(a2(1:2)),ty1(a2(3:4)),jj=1,1)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/(ty1(a1(1:2)),ty1(a1(3:4)),jj=1,1)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/(ty1(a3),ty1(a4),jj=1,1)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2((/(ty1((/1,2/)),ty1((/3,4/)),jj=1,1)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

str=ty2(ty1((/1,2/)))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,2
 if (arr(i).ne.i) print *,'fail'
end do
do i=3,4
 if (arr(i).ne.i-2) print *,'fail'
end do

str=ty2((/(ty1((/i,i+1/)),i=1,3,2)/))
rewind 11
write(11,*) str%sss1(1)%arr,str%sss1(2)%arr
rewind 11
read (11,*) arr(1:4)
do i=1,4
 if (arr(i).ne.i) print *,'fail'
end do

open(11,file="fort.11",status='old')
close(11,status='delete')
end
