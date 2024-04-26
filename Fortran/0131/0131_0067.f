c
       program   main
       integer   maize(10,10),xmaize(10,10),ans
       integer   right,left,up,down,xpos,ypos,entx,enty
c
       data  maize/0,0,0,0,0,1,0,0,0,0,
     +             1,1,0,0,0,1,0,0,0,0,
     +             0,1,1,0,1,1,0,0,0,0,
     +             0,0,1,0,1,0,0,0,0,0,
     +             0,1,1,0,1,0,1,1,1,0,
     +             0,1,0,0,1,1,1,0,1,0,
     +             0,1,0,0,0,0,0,0,1,0,
     +             0,1,0,0,1,1,1,1,1,0,
     +             0,1,1,1,1,0,0,0,0,0,
     +             0,0,0,0,0,0,0,0,0,0/
c
       do 5  i=1,10,1
            do 5  j=1,10,1
                  xmaize(i,j) = 0
    5  continue
c
       do 10 i=1,10,1
           write(6,*) (maize(i,j),j=1,10,1)
   10  continue
c
       right = 0
       left  = 2
       up    = 3
       down  = 4
       i = 1
       do 20 j=1,10
           if(maize(i,j) .eq. 1)  goto 30
   20  continue
       i = 10
       do 21 j=1,10
           if(maize(i,j) .eq. 1)  goto 30
   21  continue
       j = 1
       do 22 i=1,10
           if(maize(i,j) .eq. 1)  goto 30
   22  continue
       j = 10
       do 23 i=1,10
           if(maize(i,j) .eq. 1)  goto 30
   23  continue
c
   30  ans  = 0
       xpos = i
       entx = i
       ypos = j
       enty = j
       xmaize(i,j) = 1
c
   40  right=0
       call search(maize, xpos, ypos, right, ans)
       if(ans .eq. 1) then
            if(ypos+1 .eq. enty) then
                   ans = 0
                   goto 50
            endif
            entx=xpos
            enty=ypos
            ypos=ypos+1
            xmaize(xpos,ypos) = 1
            if((xpos .eq. 1) .or. (xpos .eq. 10) .or.
     +         (ypos .eq. 1) .or. (ypos .eq. 10))    then
                 goto 100
c
            else
                 ans = 0
                 goto 40
            endif
       else
       endif
c
   50  left = 2
       call search(maize, xpos, ypos, left, ans)
       if(ans .eq. 1) then
            if(ypos-1 .eq. enty) then
                 ans = 0
                 goto 60
            end if
            entx=xpos
            enty=ypos
            ypos=ypos-1
            xmaize(xpos,ypos) = 1
            if((xpos .eq. 1) .or. (xpos .eq. 10) .or.
     +         (ypos .eq. 1) .or. (ypos .eq. 10))    then
                 goto 100
c
            else
                 ans = 0
                 goto 40
            endif
       else
       endif
c
   60  up = 3
       call search(maize, xpos, ypos, up, ans)
       if(ans .eq. 1) then
            if(xpos-1 .eq. entx) then
                  ans = 0
                  goto 70
            end if
            entx=xpos
            enty=ypos
            xpos=xpos-1
            xmaize(xpos,ypos) = 1
            if((xpos .eq. 1) .or. (xpos .eq. 10) .or.
     +         (ypos .eq. 1) .or. (ypos .eq. 10))    then
                 goto 100
c
            else
                 ans = 0
                 goto 40
            endif
       else
            goto 70
       endif
c
   70  down = 4
       call search(maize, xpos, ypos, down, ans)
       if(ans .eq. 1) then
            entx=xpos
            xpos=xpos+1
            enty=ypos
            xmaize(xpos,ypos) = 1
            if((xpos .eq. 1) .or. (xpos .eq. 10) .or.
     +         (ypos .eq. 1) .or. (ypos .eq. 10))    then
                 goto 100
c
            else
                 ans = 0
                 goto 40
            endif
       else
            write(6,*) ' no enterance'
            goto 100
       endif
c
  100  write(6,*) '*--*--*--*--*--*--*'
       do 200 i=1,10,1
              write(6,*)  (xmaize(i,j),j=1,10,1)
  200  continue
c
       do 300 i=1,10,1
           do 300 j=1,10,1
                if(maize(i,j) .ne. xmaize(i,j)) then
                      write(6,*) 'test ===> ng'
                      goto 400
                end if
  300  continue
       write(6,*) 'test ===> ok'
c
  400  stop
       end
c
c
       subroutine search(m,x,y,move,rst)
       integer m(10,10),x,y,rst,move
       integer dx(2),dy(2)
c
       data dx/ 1, -1/
       data dy/-1,  1/
c
       if(move .eq. 0) then
             if(y+dy(2) .gt. 10) then
                  rst = 0
                  return
             end if
             if(m(x,y+dy(2)) .ne. 1) then
                  rst = 0
                  return
             else
                  rst = 1
                  return
             end if
       end if
c
       if(move .eq. 2) then
             if(y+dy(1) .lt. 1) then
                  rst = 0
                  return
             end if
             if(m(x,y+dy(1)) .ne. 1) then
                  rst = 0
                  return
             else
                  rst = 1
                  return
             end if
        end if
c
       if(move .eq. 3) then
             if(x+dx(2) .lt. 1) then
                  rst = 0
                  return
             end if
             if(m(x+dx(2),y) .ne. 1) then
                  rst = 0
                  return
             else
                  rst = 1
                  return
             end if
        end if
c
       if(move .eq. 4) then
             if(x+dx(1) .gt. 10) then
                  rst = 0
                  return
             end if
             if(m(x+dx(1),y) .ne. 1) then
                  rst = 0
                  return
             else
                  rst = 1
                  return
             end if
        end if
        return
        end
