      program main
      real*8      a(512),b(512),c(512),d(512)
      common /com/a,b,c,d
        do 10 j=1,512
          a(j)=0.0
          b(j)=1.0
          c(j)=2.0
          d(j)=3.0
   10   continue
        do 20 j=1,512
          if(a(j).eq.0.0) then
             a(j)=1.0
          endif
          if(b(j).eq.1.0  .and.  a(j).eq.1.0) then
             b(j)=2.0
          endif
          if(c(j).eq.2.0  .and.  b(j).eq.2.0  .and  .a(j).eq.1.0) then
             c(j)=3.0
          endif
          if(d(j).eq.3.0  .and.  c(j).eq.3.0  .and.  b(j).eq.2.0  .and.
     +    a(j).eq.1.0) then
             d(j)=4.0
          endif
   20   continue
      call comsb1
      stop
      end
      subroutine comsb1
      real*8     a(512),b(512),c(512),d(512)
      real*8     aa(512),bb(512),cc(512),dd(512)
      common /com/a,b,c,d
        do 10 j=1,512
          if(a(j).eq.0.0  .or.  a(j).eq.1.0) then
             a(j)=a(j)+1.0
          endif
          if(b(j).eq.0.0  .or.  b(j).eq.1.0) then
             b(j)=b(j)+1.0
          else
             b(j)=b(j)+1.0
          endif
          if(c(j).eq.0.0  .or.  c(j).eq.1.0) then
             c(j)=c(j)+1.0
          else
             if(c(j).eq.2.0) then
                c(j)=c(j)+1.0
             else
                c(j)=c(j)+1.0
             endif
          endif
          if(d(j).eq.0.0  .or.  d(j).eq.4.0  .and.  c(j).eq.2.0) then
             d(j)=d(j)+1.0
          else
             if(d(j).eq.4.0  .and.  a(j).eq.1.0) then
                d(j)=d(j)+1
             else
                if(d(j).eq.4.0  .and.  c(j).eq.4.0) then
                   d(j)=d(j)+1.0
                else
                   d(j)=0.0
                endif
             endif
          endif
   10   continue
      if(a(512).eq.2.0 .and. b(512).eq.3.0 .and. c(512).eq.4.0 .and.
     +d(512).eq.5.0) then
       do 999 j=1,512
         aa(j)=a(j)
         bb(j)=b(j)
         cc(j)=c(j)
         dd(j)=d(j)
 999   continue
         write(6,*) ' ** com-array test ok ** '
         write(6,*) ' '
         write(6,*) aa(512),bb(512),cc(512),dd(512)
      else
         write(6,*) ' ** com-array test ng ** '
         write(6,*) ' '
         write(6,*) (aa(i),bb(i),cc(i),dd(i),i=1,512)
      endif
      return
      end
