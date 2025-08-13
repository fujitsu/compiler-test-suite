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
 write(7)adjustl(char(c       )//char(index(a,b)  )),(/1,0,2,0/)
 write(7)adjustl(char(ichar(a))//char(index(a,b)  )),(/49,0,50,0/)
 write(7)adjustl(char(c(i:j)  )//char(index(a,b)  )),(/1,0,2,0/)
 write(7)adjustl(char(index(a,b))//char(index(a,b))),(/0,0,0,0/)
 write(7)adjustl(char(iachar(a))//char(index(a,b) )),(/49,0,50,0/)
 write(7)adjustl(char(c       )//char(ichar(a)  )),(/ 1, 49,2,50/)
 write(7)adjustl(char(ichar(a))//char(ichar(a)  )),(/49,49,50,50/)
 write(7)adjustl(char(c(i:j)  )//char(ichar(a)  )),(/ 1, 49,2,50/)
 write(7)adjustl(char(index(a,b))//char(ichar(a))),(/ 0 ,49,0,50/)
 write(7)adjustl(char(iachar(a))//char(ichar(a) )),(/49,49,50,50/)
 write(7)adjustl(char(c       )//char(iachar(a)  )),(/ 1,49,2,50 /)
 write(7)adjustl(char(ichar(a))//char(iachar(a)  )),(/49,49,50,50/)
 write(7)adjustl(char(c(i:j)  )//char(iachar(a)  )),(/ 1,49, 2,50/)
 write(7)adjustl(char(index(a,b))//char(iachar(a))),(/ 0,49, 0,50/)
 write(7)adjustl(char(iachar(a))//char(iachar(a) )),(/49,49,50,50/)
 write(7)adjustl(char(c       )//char(c  )),(/1 ,1,2,2 /)
 write(7)adjustl(char(ichar(a))//char(c  )),(/49,1,50,2/)
 write(7)adjustl(char(c(i:j)  )//char(c  )),(/ 1,1,2,2 /)
 write(7)adjustl(char(index(a,b))//char(c)),(/ 0,1,0,2 /)
 write(7)adjustl(char(iachar(a))//char(c)),(/49,1,50,2/)
 write(7)adjustl(char(c       )//char(c(i:j)  )),(/1 ,1,2,2 /)
 write(7)adjustl(char(ichar(a))//char(c(i:j)  )),(/49,1,50,2/)
 write(7)adjustl(char(c(i:j)  )//char(c(i:j)  )),(/ 1,1,2,2 /)
 write(7)adjustl(char(index(a,b))//char(c(i:j))),(/ 0,1,0,2 /)
 write(7)adjustl(char(iachar(a))//char(c(i:j))),(/49,1,50,2/)
rewind 7
 do ii=1,25
 read (7) d,e;call chk(d,e)
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
