module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::p
  character(:),pointer::pa(:,:)
  character(1),target::t1='3'
  character(2),target::ta2(2,3)=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))
end
subroutine s1
use m1
interface
    function f(i) result(r)
      character(i),pointer::r
    end function
    function fa(i) result(r)
      character(i),pointer::r(:,:)
    end function
end interface
call       ss1(p,pa)
contains
subroutine chk02x(pa,k)
  character(*)::pa(:,:)
if (len(pa)/=1*k)print *,'error-11g'
if (any(pa/=reshape((/repeat('a',k),repeat('b',k),repeat('c',k),repeat('d',k),repeat('e',k),repeat('f',k)/),(/3,2/))))print *,'error-12g'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14g'
if (any(shape(pa)/=(/3,2/)))print *,'error-15g'
end subroutine
subroutine ss1(p,pa)
  character(:),pointer::p
  character(:),pointer::pa(:,:)
  character(:),pointer::cp,cpa(:,:)
  character(2),target ::cc
  character(1),target ::cca(3,2)
cp=>cc
cpa=>cca

pa=>fa(1)
if (len(pa)/=1)print *,'error-11'
if (len(pa(:,:))/=1)print *,'error-11-a'
if (len(pa(:,:)(:))/=1)print *,'error-11-b'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (any(pa(:,:)/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12-a'
if (any(pa(:,:)(:)/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12-b'
if (.not.associated(pa))print *,'error-13'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14'
if (any(shape(pa)/=(/3,2/)))print *,'error-15'
call chk02(pa)
call chk02x(pa,1)
call chk02x(pa//pa//pa,3)
call chk02(pa(:,:))
call chk02x(pa(:,:),1)
call chk02x(pa(:,:)//pa(:,:)//pa(:,:),3)
call chk02(pa(:,:)(:))
call chk02x(pa(:,:)(:),1)
call chk02x(pa(:,:)(:)//pa(:,:)(:)//pa(:,:)(:),3)
write(103,*,delim='quote')1,pa
write(103,*,delim='quote')2,pa(:,:)
write(103,*,delim='quote')3,((pa(n1,n2),n1=1,3),n2=1,2)
write(103,*,delim='quote')4,pa(:,:)(:)
write(103,*,delim='quote')5,((pa(n1,n2)(:),n1=1,3),n2=1,2)
call chkwa(103,5,pa(:,:)(:))
read(pa,'(a)')cpa
if (any(cpa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'

end subroutine
end
call s1
print *,'pass'
end
subroutine chk02(c)
character(*),dimension(6)::c
 if (len(c)/=1)print *,'901'
if (any(c/=(/'a','b','c','d','e','f'/)))print *,'error-902'
end
subroutine chkwa(i,k,c)
character(*)::c(*)
character(len(c))::x(6)
rewind i
do n=1,k
 read(i,*)mm,x(:)
 do nn=1,6
   if (x(nn)/=c(nn))print *,'error chkwa',mm,i,n,nn,k,c(1:6),x
 end do
end do
end

subroutine chkw(i,k,c)
character(*)::c
character(10)::x
rewind i
do n=1,k
 read(i,'(a)')x(:len(c))
 if (x(:len(c))/=c)print *,'error chkw',i,k,c,x
end do
end

    function fa(i) result(r)
      use m1
      character(i),pointer::r(:,:)
      if (i==1) then
        r=>ta
      else
        r=>ta2
      endif
    end function
