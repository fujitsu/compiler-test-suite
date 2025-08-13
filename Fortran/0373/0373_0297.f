
#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))

      real*8 stime,etime
      complex ca(100,100),cb(100,100),cc(100,100)
      complex cs/(0,0)/,ct/(0,0)/,res
      integer x(100)/1,0,0,0,0,1,1,1,1,1,90*1/
      integer y(100)/1,1,1,1,0,1,1,1,1,1,90*1/
      integer z(100)/5,1,2,8,7,6,9,3,4,10,90*10/
      real    ra(100)/100*2./,rb(100)/100*3./
      logical la(100)/100*.true./,lb(100)/100*.true./,ls/.false./
      data ca/10000*(0,0)/
      data cb/10000*(3,3)/
      data cc/10000*(1,1)/
      data res/(-29.666936,-17.837881)/

      do i=1,10
        do j=1,10
          if(x(j).eq.y(j)) then
            cs = j + 1
            if(z(j).gt.i) then
              ca(j,i) = csin(cb(j,i) + cc(j,i))
              ct = ca(j,i) - i
              if(j.eq.i) then
                cs = ct + ra(j) - j
                ca(j,i) = cs / 2 + abs(ra(j))
                if(la(j)) then
                  ls = la(j) .and. lb(j)
                  if(ls) then
                    rs = ra(j) + rb(i)
                    if(rs.ge.i) then
                      ls = la(i) .or. lb(i)
                      if(ls) then
                        rs = rs + ra(j) + rb(i)
                      endif
                    endif
                  endif
                endif
              endif
            endif
          endif
        enddo
      enddo
      print *,cs
      if (IS_EQUAL(ct,res)) then
      else
         print *,ct
      endif
      print *,ls
      print *,rs

      do i=1,10
        do j=1,10
          if(x(j).eq.y(j)) then
            cs = j + 1
            if(z(j).gt.i) then
              ca(j,i) = csin(cb(j,i) + cc(j,i))
              ct = ca(j,i) - i
              if(j.eq.i) then
                cs = ct + ra(j) - j
                ca(j,i) = cs / 2 + abs(ra(j))
                if(la(j)) then
                  ls = la(j) .and. lb(j)
                  if(ls) then
                    rs = ra(j) + rb(i)
                    if(rs.ge.i) then
                      ls = la(i) .or. lb(i)
                      if(ls) then
                        rs = rs + ra(j) + rb(i)
                      endif
                    endif
                  endif
                endif
              endif
            endif
          endif
        enddo
      enddo
      print *,cs
      if (IS_EQUAL(ct,res)) then
      else
         print *,ct
      endif
      print *,ls
      print *,rs

      end
