call test01()
print *,'pass'
end

subroutine test01()
type ty1
integer,allocatable:: j01(: )
integer,allocatable:: j02(: )
integer,allocatable:: j03(: )
integer,allocatable:: j04(: )
end type
type(ty1) :: s
integer :: ii(10)
integer,target :: it(10)
integer,allocatable:: ia(:)
integer,pointer:: ip(:)
ip=>it
allocate(ia(10))
ia=(/(i,i=1,10)/)
it=ia
ii=ia
do j=1,1
s = ty1(ii,ia,ip,it)
do j1=1,1
if (any(s%j01.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1,10)/))) print *,'fail'
end do
end do
if (size(s%j01).ne. 10) print *,'fail'
if (size(s%j02).ne. 10) print *,'fail'
if (size(s%j03).ne. 10) print *,'fail'
if (size(s%j04).ne. 10) print *,'fail'

do j=1,1
s = ty1(ii+1,ia+2,ip+3,it+4)
do j1=1,1
if (any(s%j01.ne.(/(i+1,i=1,10)/))) print *,'fail'
if (any(s%j02.ne.(/(i+2,i=1,10)/))) print *,'fail'
if (any(s%j03.ne.(/(i+3,i=1,10)/))) print *,'fail'
if (any(s%j04.ne.(/(i+4,i=1,10)/))) print *,'fail'
end do
end do

do j=1,1
s = ty1(ii(:)+1,ia(:)+2,ip(:)+3,it(:)+4)
do j1=1,1
if (any(s%j01.ne.(/(i+1,i=1,10)/))) print *,'fail'
if (any(s%j02.ne.(/(i+2,i=1,10)/))) print *,'fail'
if (any(s%j03.ne.(/(i+3,i=1,10)/))) print *,'fail'
if (any(s%j04.ne.(/(i+4,i=1,10)/))) print *,'fail'
end do
end do

do j=1,1
s = ty1(ii(1:7)+1,ia(1:7)+2,ip(1:7)+3,it(1:7)+4)
do j1=1,1
if (any(s%j01.ne.(/(i+1,i=1, 7)/))) print *,'fail'
if (any(s%j02.ne.(/(i+2,i=1, 7)/))) print *,'fail'
if (any(s%j03.ne.(/(i+3,i=1, 7)/))) print *,'fail'
if (any(s%j04.ne.(/(i+4,i=1, 7)/))) print *,'fail'
end do
end do
if (size(s%j01).ne.  7) print *,'fail'
if (size(s%j02).ne.  7) print *,'fail'
if (size(s%j03).ne.  7) print *,'fail'
if (size(s%j04).ne.  7) print *,'fail'

do j=1,1
s = ty1(ii(1:7),ia(1:7),ip(1:7),it(1:7))
do j1=1,1
if (any(s%j01.ne.(/(i,i=1, 7)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1, 7)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1, 7)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1, 7)/))) print *,'fail'
end do
end do
if (size(s%j01).ne.  7) print *,'fail'
if (size(s%j02).ne.  7) print *,'fail'
if (size(s%j03).ne.  7) print *,'fail'
if (size(s%j04).ne.  7) print *,'fail'


do j=1,1
s = ty1(ii(1:),ia(1:),ip(1:),it(1:))
do j1=1,1
if (any(s%j01.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1,10)/))) print *,'fail'
end do
end do
if (size(s%j01).ne. 10) print *,'fail'
if (size(s%j02).ne. 10) print *,'fail'
if (size(s%j03).ne. 10) print *,'fail'
if (size(s%j04).ne. 10) print *,'fail'

end

subroutine test02()
type ty1
integer,allocatable:: j01(: )
integer,allocatable:: j02(: )
integer,allocatable:: j03(: )
integer,allocatable:: j04(: )
end type
type(ty1) :: s
integer :: ii(10)
integer,target :: it(10)
integer,allocatable:: ia(:)
integer,pointer:: ip(:)
ip=>it
allocate(ia(10))
ia=(/(i,i=1,10)/)
it=ia
ii=ia

do j=1,10
s = ty1(ii(1:j),ia(1:j),ip(1:j),it(1:j))
do j1=1,1
if (any(s%j01.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1, j)/))) print *,'fail'
end do
end do
if (size(s%j01).ne. 10) print *,'fail'
if (size(s%j02).ne. 10) print *,'fail'
if (size(s%j03).ne. 10) print *,'fail'
if (size(s%j04).ne. 10) print *,'fail'


do j=1,1
s = ty1(ii(j:),ia(j:),ip(j:),it(j:))
do j1=1,1
if (any(s%j01.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1,10)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1,10)/))) print *,'fail'
end do
end do
if (size(s%j01).ne. 10) print *,'fail'
if (size(s%j02).ne. 10) print *,'fail'
if (size(s%j03).ne. 10) print *,'fail'
if (size(s%j04).ne. 10) print *,'fail'

end

subroutine test03()
type ty1
integer,allocatable:: j01(: )
integer,allocatable:: j02(: )
integer,allocatable:: j03(: )
integer,allocatable:: j04(: )
end type
type(ty1) :: s
integer :: ii(10)
integer,target :: it(10)
integer,allocatable:: ia(:)
integer,pointer:: ip(:)
ip=>it
allocate(ia(10))
ia=(/(i,i=1,10)/)
it=ia
ii=ia

open (31)
do j=1,10
s = ty1(ii(1:j),ia(1:j),ip(1:j),it(1:j))
write(31,*) s%j01,s%j02(:),s%j03(1:j)
do j1=1,1
if (any(s%j01.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j02.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j03.ne.(/(i,i=1, j)/))) print *,'fail'
if (any(s%j04.ne.(/(i,i=1, j)/))) print *,'fail'
end do
end do
if (size(s%j01).ne. 10) print *,'fail'
if (size(s%j02).ne. 10) print *,'fail'
if (size(s%j03).ne. 10) print *,'fail'
if (size(s%j04).ne. 10) print *,'fail'

close(31)

end
