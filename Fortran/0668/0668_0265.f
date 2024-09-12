      program main
      inn=10
      call sub1(inn)
      call sub2
      stop
      end
      subroutine sub1(inn)
      real     ra(10),rb(2:11),rc(10),rd(10)
      real*8   da(10),db(2:11),dc(10),dd(10)
      integer  i4a(10),i4b(2:11)
      do 11 i=1,5
 11   ra(i)=0.0
      do 20 i=6,10
 20   ra(i)=1.0
      do 30 i=1,5
 30   da(i)=0.0
      do 40 i=6,10
 40   da(i)=1.0
      do 10 i=1,inn
       rb(i+1)=ra(i)
       db(i+1)=da(i)
       i4a(i)=i
       i4b(i+1)=i+1
       rb(i+1)=da(i)
       db(i+1)=rb(i+1)
       rc(i)=ra(i)
       dc(i)=da(i)
       rd(i)=rb(i+1)
       dd(i)=db(i+1)
       ra(i)=1
       da(i)=1
 10   continue
      write(6,*) '*** sub1 result ****'
      write(6,*) i4a(1),i4a(10),i4b(2),i4b(11)
      write(6,*) ra(10),rb(11),rc(1),rd(1)
      write(6,*) da(10),db(11),dc(1),dd(1)
      return
      end
      subroutine sub2
      real     ra(1024),rb,rc
      real*8   da(1024),db,dc
      integer  ia(1024),ib,ic
      do 10 i=1,1023,2
        ra(i)=0.0
        da(i)=0.0
        ia(i)=0
 10   continue
      do 11 i=2,1024,2
        ra(i)=1.0
        da(i)=1.0
        ia(i)=1
 11   continue
        rc=0
        dc=0
        ic=0
      do 12 i=1,1024
        rc=ra(i)+rc
        dc=da(i)+dc
 12     ic=ia(i)+ic
      do 13 i=1,1024
        if (ra(i).ne.0.0) then
        rb=max(rc,ra(i))
        endif
 13     continue
      do 14 i=1,1024
        if (da(i).ne.0.0) then
        db=max(dc,da(i))
        endif
 14     continue
      do 15 i=1,1024
        if (ia(i).ne.0) then
        ib=min(ic,ia(i))
        endif
 15     continue
      write(6,*) '*** sub1 result ****'
      write(6,*) ic,ib,ia(1),ia(1024)
      write(6,*) rc,rb,ra(1),ra(1024)
      write(6,*) dc,db,da(1),da(1024)
      return
      end
