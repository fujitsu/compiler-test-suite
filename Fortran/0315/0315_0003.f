      program main
      integer a,b,c,d,e,f,g,h,i,j
      call sub(a,b,c,d,e,f,g,h,i,j)
      if (((a.eq.1).and.(b.eq.2)).and.((c.eq.3).and.(d.eq.4))) then
        print *,'###      OK-1      ###'
      else
        print *,'###      NG-1      ###'
      end if
      if (((e.eq.5).and.(f.eq.6)).and.((g.eq.7).and.(h.eq.8))) then
        print *,'###      OK-2      ###'
      else
        print *,'###      NG-2      ###'
      end if
      if ((i.eq.9).and.(j.eq.10)) then
        print *,'###      OK-3      ###'
      else
        print *,'###      NG-3      ###'
      end if
      stop
      end

      subroutine sub(as,bs,cs,ds,es,fs,gs,hs,is,js)
      integer as,bs,cs,ds,es,fs,gs,hs,is,js
      do i=1,10
        select case(i)
          case(1)
            as=1
          case(2)
            bs=2
          case(3)
            cs=3
          case(4)
            ds=4
          case(5)
            es=5
          case(6)
            fs=6
          case(7)
            gs=7
          case(8)
            hs=8
          case(9)
            is=9
          case(10)
            js=10
        end select
      end do
      return
      end
