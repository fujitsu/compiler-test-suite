      program main
        integer time1,time2
        integer dim1(10,10,10),dim2(10,10,10),d1,ngf
        integer dim01,rcd,func
        common  /r/rcd
        real    time
        character msg*10,str*2
        istf(i,j)=i-j
        istf1(i)=func(i)+rcd
        msg='*** ok ***'
        ngf=0
        do 10 i=1,10
          do 10 j=1,10
            do 10 k=1,10
              dim1(i,j,k)=i+j+k
              dim2(i,j,k)=j
 10     continue
        call clock(time1,0,1)
        do 40 i=1,10
          do 30 j=1,10
            do 20 k=1,10
              call suba(i,j,k,d1)
              dim01=dim1(i,j,k)*3
              call sedt(str,istf(dim01,d1))
              if(str.eq.'ng') then
                msg(5:6)=str
                print *,'*** dim1(',i,',',j,',',k,')=',dim1(i,j,k),msg
                ngf=1
                stop
              endif
 20         continue
            do 25 k=1,10
              rcd=0
              if(istf1(dim2(i,j,k)).eq.10) then
                call sedt(str,0)
              else
                print *,'rcd=',rcd
                call sedt(str,1)
                msg(5:6)=str
                print *,'*** dim2(',i,',',j,',',k,')=',dim2(i,j,k),msg
                ngf=1
               stop
              endif
 25         continue
 30       continue
 40     continue
        call clock(time2,0,1)
        time=(time2-time1)/2000.
        if(ngf.eq.0) call sedt(msg(5:6),ngf)
        print *,'*** ',msg,' ***'
        stop
      end
      subroutine suba(pr1,pr2,pr3,rtn)
        integer pr1,pr2,pr3,rtn
        issf1(i)=i*3
        issf2(i,j,k)=issf1(i)+issf1(j)+issf1(k)
        rtn=issf2(pr1,pr2,pr3)
        return
      end
      subroutine sedt(s,i)
        character s*2
        integer   i
        if(i.eq.0) then
          s='ok'
        else
          s='ng'
        endif
        return
      end
      integer function func(ip1)
        integer rcd
        integer ip1,ary(10)
        common  /r/rcd
        isfb(i,j)=j-i
        call subb(ary,10)
        rcd=isfb(ip1,10)
        do 100 i=1,10
          if(ary(i).eq.ip1) then
            func=i
            return
          endif
 100    continue
        func=0
        return
      end
      subroutine subb(a,s)
        integer  a,s
        dimension a(*)
        do 200 i=1,s
          a(i)=i
 200    continue
        return
      end
      subroutine clock(i,j,k)
      i=1.0
      end
