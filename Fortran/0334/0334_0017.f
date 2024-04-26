
      logical function pre(o)
      integer,optional,dimension(10) ::o
      pre = present(o)
      end
      subroutine sub(o,r)
      interface 
        logical function pre(o)
          integer,optional,dimension(10) ::o
        end
      end interface
      integer,optional,dimension(10) ::o
      integer :: r
      integer,save :: kei
      logical pre_res
      pre_res = pre(o)
      if( pre_res ) then
         kei = kei + sum(o)
      endif
      if( .not.(pre(o)) ) then
         kei = 10
      endif

      r = kei
      end
      interface 
        subroutine sub(area,result)
          integer,optional,dimension(10) ::area
          integer ::result
	end
      end interface
      integer,dimension(10):: j
      integer     :: kei1, kei2
      integer     :: ans1, ans2
      parameter (ans1=10,ans2=65)
      kei1=0
      do i=1,10
	j(i)=i
      enddo

      call sub(result=kei1)
      call sub(j,result=kei2)

      if ((kei1.eq.ans1).and.(kei2.eq.ans2)) then
         print *,'OK'
      else
         print *,'NG'
      endif
      end
