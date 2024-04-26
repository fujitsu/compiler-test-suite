      module modmod
      integer,parameter::N=16
      end module modmod

      program main
      use modmod
      integer,dimension(1:N)::var1,var2,var3,var4,var5,var6
      logical sub1

      call init(var1,var2,var3,var4,var5,var6)
      if (sub1(var1+var2,var3+var4,var5+var6) .and. 
     &     sub1((/(i,i=1,N)/),(/(N-i+1,i=1,N)/),
     &     (/(mod(i,N/2)+1,i=1,N)/))) then
         print *,sub1(var1+var2,var3+var4,var5+var6)
         print *,sub1((/(i,i=1,N)/),(/(N-i+1,i=1,N)/),
     &     (/(mod(i,N/2)+1,i=1,N)/))
         print *,"NG"
      else
         print *,"OK"
      endif
      end

      subroutine init(v1,v2,v3,v4,v5,v6)
      use modmod
      integer,dimension(1:N)::v1,v2,v3,v4,v5,v6
      v1 = (/(i,i=1,N)/)
      v2 = (/(i,i=N+1,2*N)/)
      v3 = (/(i,i=N,1,-1)/)
      v4 = (/(i,i=2*N,N+1,-1)/)
      v5 = (/(i,i=1,2*N,2)/)
      v6 = (/(i,i=2*N,1,-2)/)
      end subroutine init

      logical function sub1(v1,v2,v3)
      use modmod
      integer,dimension(1:N)::v1,v2,v3
      integer,dimension(1:4,1:4)::ary1,ary2,ary3
      logical,dimension(1:4,1:4)::m1,m2,m3

      ary1 = reshape(v1+v2,(/4,4/))
      ary2 = reshape(v2+v3,(/4,4/))
      ary3 = reshape(v3+v1,(/4,4/))

      where (ary1 > ary2)
         m1 = .true.
      elsewhere
         m1 = .false.
      endwhere
      where (ary2 > ary3)
         m2 = .true.
      elsewhere
         m2 = .false.
      endwhere
      where (ary3 > ary1)
         m3 = .true.
      elsewhere
         m3 = .false.
      endwhere
      sub1 = any(m1.and.m2.and.m3)
      end
