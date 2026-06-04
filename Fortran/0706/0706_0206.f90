 call s1
 print *,'pass'
 end
module m1
 contains 
 subroutine tt(a)
 character(*) a(1,1)
 if (len(a)/=1)print *,'fail'
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(a/='1'))print *,'fail'
 end subroutine
 subroutine ss(a)
 character(*)     a(:,:)
 if (len(a)/=1)print *,'fail'
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(a/='1'))print *,'fail'
 end subroutine
end
 subroutine s1
use m1
 character ::aa(1)='1',bb(1,1)='1',cc(1,1)*0,c*0
 integer::i=1
 integer:: v(1)=1
 character*100 jj
 call xx(aa,bb,i,v,jj,cc,c)
contains
 subroutine xx(aa,bb,i,v,jj,cc,c)
 character(*) ::aa(:),bb(:,:),cc(:,:),c
 integer:: v(:)
character*(*) jj
 call ss(reshape(aa,(/1,1/)))
 call ss(reshape(aa,(/1,1/))//cc//c)
 call ss(reshape(aa,(/1,1/))//cc  )
 call ss(reshape(aa,(/1,1/))//c//c)
 call ss(reshape(aa,(/1,1/))//c   )
 call ss(bb(1:i,i:1))
 call ss(bb(1:i,i:1)//cc//c)
 call ss(bb(1:i,i:1)//cc  )
 call ss(bb(1:i,i:1)//c//c)
 call ss(bb(1:i,i:1)//c   )
 call ss(bb(1:i,v))
 call ss(bb(1:i,v)//cc//c)
 call ss(bb(1:i,v)//cc  )
 call ss(bb(1:i,v)//c//c)
 call ss(bb(1:i,v)//c   )
 call ss(bb(v  ,v))
 call ss(bb(v  ,v)//cc//c)
 call ss(bb(v  ,v)//cc  )
 call ss(bb(v  ,v)//c//c)
 call ss(bb(v  ,v)//c   )
 call ss(bb(1:i,reshape(v,(/i/))))
 call ss(bb(1:i,reshape(v,(/i/)))//cc//c)
 call ss(bb(1:i,reshape(v,(/i/)))//cc  )
 call ss(bb(1:i,reshape(v,(/i/)))//c//c)
 call ss(bb(1:i,reshape(v,(/i/)))//c   )
 call ss(bb(reshape(v,(/i/))  ,reshape(v,(/i/))))
 call ss(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc//c)
 call ss(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc  )
 call ss(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c//c)
 call ss(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c   )
 call ssy(transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))))
 call ssy(transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))))
 call ssy(transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))) )
 call ssy(transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c//c)
 call ssy(transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c   )
 call tt(reshape(aa,(/1,1/)))
 call tt(reshape(aa,(/1,1/))//cc//c)
 call tt(reshape(aa,(/1,1/))//cc  )
 call tt(reshape(aa,(/1,1/))//c//c)
 call tt(reshape(aa,(/1,1/))//c   )
 call tt(bb(1:i,i:1))
 call tt(bb(1:i,i:1)//cc//c)
 call tt(bb(1:i,i:1)//cc  )
 call tt(bb(1:i,i:1)//c//c)
 call tt(bb(1:i,i:1)//c   )
 call tt(bb(1:i,v))
 call tt(bb(1:i,v)//cc//c)
 call tt(bb(1:i,v)//cc  )
 call tt(bb(1:i,v)//c//c)
 call tt(bb(1:i,v)//c   )
 call tt(bb(v  ,v))
 call tt(bb(v  ,v)//cc//c)
 call tt(bb(v  ,v)//cc  )
 call tt(bb(v  ,v)//c//c)
 call tt(bb(v  ,v)//c   )
 call tt(bb(1:i,reshape(v,(/i/))))
 call tt(bb(1:i,reshape(v,(/i/)))//cc//c)
 call tt(bb(1:i,reshape(v,(/i/)))//cc  )
 call tt(bb(1:i,reshape(v,(/i/)))//c//c)
 call tt(bb(1:i,reshape(v,(/i/)))//c   )
 call tt(bb(reshape(v,(/i/))  ,reshape(v,(/i/))))
 call tt(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc//c)
 call tt(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc  )
 call tt(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c//c)
 call tt(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c   )
 call tt4((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))))
 call tt4((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))))//c)
 call tt4((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))) ))
 call tt4((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c//c))
 call tt4((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c   ))
 write(11,*)(reshape(aa,(/1,1/)))
 write(11,*)(reshape(aa,(/1,1/))//cc//c)
 write(11,*)(reshape(aa,(/1,1/))//cc  )
 write(11,*)(reshape(aa,(/1,1/))//c//c)
 write(11,*)(reshape(aa,(/1,1/))//c   )
 write(11,*)(bb(1:i,i:1))
 write(11,*)(bb(1:i,i:1)//cc//c)
 write(11,*)(bb(1:i,i:1)//cc  )
 write(11,*)(bb(1:i,i:1)//c//c)
 write(11,*)(bb(1:i,i:1)//c   )
 write(11,*)(bb(1:i,v))
 write(11,*)(bb(1:i,v)//cc//c)
 write(11,*)(bb(1:i,v)//cc  )
 write(11,*)(bb(1:i,v)//c//c)
 write(11,*)(bb(1:i,v)//c   )
 write(11,*)(bb(v  ,v))
 write(11,*)(bb(v  ,v)//cc//c)
 write(11,*)(bb(v  ,v)//cc  )
 write(11,*)(bb(v  ,v)//c//c)
 write(11,*)(bb(v  ,v)//c   )
 write(11,*)(bb(1:i,reshape(v,(/i/))))
 write(11,*)(bb(1:i,reshape(v,(/i/)))//cc//c)
 write(11,*)(bb(1:i,reshape(v,(/i/)))//cc  )
 write(11,*)(bb(1:i,reshape(v,(/i/)))//c//c)
 write(11,*)(bb(1:i,reshape(v,(/i/)))//c   )
 write(11,*)(bb(reshape(v,(/i/))  ,reshape(v,(/i/))))
 write(11,*)(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc//c)
 write(11,*)(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//cc  )
 write(11,*)(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c//c)
 write(11,*)(bb(reshape(v,(/i/))  ,reshape(v,(/i/)))//c   )
 write(12,*)((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))))
 write(12,*)((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))))//c)
 write(12,*)((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/))) ))
 write(12,*)((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c//c))
 write(12,*)((transfer(reshape(cc,(/i/))  ,reshape(cc,(/i/)))//c   ))
rewind 11
rewind 12
do j=1,35-5
 read(11,'(a)') jj;if (jj/=' 1')print *,'fail'
end do
read (11,'(a)',end=1)jj
print *,'fail'
1 continue
do j=1,5     
 read(12,'(a)') jj;if (jj/=' ')print *,'fail'
end do
read (12,'(a)',end=2)jj
print *,'fail'
2 continue
end  subroutine xx
 end
subroutine ssy(a)
entry tt4(a)
character*(*) a(*)
end
