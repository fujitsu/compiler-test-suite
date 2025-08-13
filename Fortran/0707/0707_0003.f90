 call s1
 print *,'pass'
 end
 subroutine s1
 character(kind=1):: a(2)=(/'1','2' /)    ,b(2)=(/'4','1'        /)
 integer          :: c(2)=(/1,2            /)
 target a,b,c
 character(kind=1),pointer:: az(:),bz(:),dz(:)*2
 integer          ,pointer::   cz(:)
 az=>a;bz=>b;cz=>c
 call       ss23(  az,bz,cz,dz,1,2)
 contains
 subroutine ss23(  a,b,c,d,i,j)
      character(*),dimension(:)         ,pointer:: a,b,d
      integer     ,dimension(:)         ,pointer:: c,e
 allocate(d(2),e(4))
 write(8)adjustl(achar(c       )//achar(index(a,b)  )),(/1,0,2,0/)
 write(8)adjustl(achar(ichar(a))//achar(index(a,b)  )),(/49,0,50,0/)
 write(8)adjustl(achar(c(i:j)  )//achar(index(a,b)  )),(/1,0,2,0/)
 write(8)adjustl(achar(index(a,b))//achar(index(a,b))),(/0,0,0,0/)
 write(8)adjustl(achar(iachar(a))//achar(index(a,b) )),(/49,0,50,0/)
 write(8)adjustl(achar(c       )//achar(ichar(a)  )),(/ 1, 49,2,50/)
 write(8)adjustl(achar(ichar(a))//achar(ichar(a)  )),(/49,49,50,50/)
 write(8)adjustl(achar(c(i:j)  )//achar(ichar(a)  )),(/ 1, 49,2,50/)
 write(8)adjustl(achar(index(a,b))//achar(ichar(a))),(/ 0 ,49,0,50/)
 write(8)adjustl(achar(iachar(a))//achar(ichar(a) )),(/49,49,50,50/)
 write(8)adjustl(achar(c       )//achar(iachar(a)  )),(/ 1,49,2,50 /)
 write(8)adjustl(achar(ichar(a))//achar(iachar(a)  )),(/49,49,50,50/)
 write(8)adjustl(achar(c(i:j)  )//achar(iachar(a)  )),(/ 1,49, 2,50/)
 write(8)adjustl(achar(index(a,b))//achar(iachar(a))),(/ 0,49, 0,50/)
 write(8)adjustl(achar(iachar(a))//achar(iachar(a) )),(/49,49,50,50/)
 write(8)adjustl(achar(c       )//achar(c  )),(/1 ,1,2,2 /)
 write(8)adjustl(achar(ichar(a))//achar(c  )),(/49,1,50,2/)
 write(8)adjustl(achar(c(i:j)  )//achar(c  )),(/ 1,1,2,2 /)
 write(8)adjustl(achar(index(a,b))//achar(c)),(/ 0,1,0,2 /)
 write(8)adjustl(achar(iachar(a))//achar(c)),(/49,1,50,2/)
 write(8)adjustl(achar(c       )//achar(c(i:j)  )),(/1 ,1,2,2 /)
 write(8)adjustl(achar(ichar(a))//achar(c(i:j)  )),(/49,1,50,2/)
 write(8)adjustl(achar(c(i:j)  )//achar(c(i:j)  )),(/ 1,1,2,2 /)
 write(8)adjustl(achar(index(a,b))//achar(c(i:j))),(/ 0,1,0,2 /)
 write(8)adjustl(achar(iachar(a))//achar(c(i:j))),(/49,1,50,2/)
rewind 8
 do ii=1,25
 read (8) d,e;call chk(d,e)
 end do
 read (11,end=1) d,e;print *,'fail'
1 continue
      end subroutine
      subroutine chk(x,z)
      character(*),dimension(2)::x
      integer,dimension(:)::z
      if (len(x)/=2)print *,'fail'
      if (size(z)/=4)print *,'fail'
      if (any((/((ichar(x(j)(i:i)),i=1,len(x)),j=1,size(x))/)/=z))print *,'fail'
      end subroutine
      end
