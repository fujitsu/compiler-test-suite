

      logical(kind=KIND(.true._1)),parameter::t=.true.,f=.false.
      logical(kind=KIND(.true._4))          ::mask(10)
      integer(kind=KIND(0_4)) ::i4a(10),n(1)
      integer(kind=KIND(0_4)) ::i4b(5)=(/2 ,4 ,6 ,8 ,10 /)
      real   (kind=KIND(0._4))::r4b(5)=(/1.,3.,5.,7., 9./)
      real   (kind=KIND(0._4))::r4a(10),r4c(10)
      data  i4a/Z'3F800000'   ,2,
     -          Z"40400000"   ,4,
     -          z'40A00000'   ,6,
     -          z"40E00000"   ,8,
     -          O'10104000000',10 /

      where((/t,f,t,f,t,f,t,f,t,f/))                 
        mask=TRANSFER(1_1    ,f)
      elsewhere
        mask=TRANSFER((/0_1/),t)
        endwhere
      where((/t/)) n=TRANSFER(10,(/1/))
      where(mask)
        r4a=TRANSFER(i4a,(/(REAL(2*i-1,kind=4),i=1,n(1)/2)/))
      elsewhere 
        r4a=TRANSFER(i4a,0,n(1))
      endwhere
      where((/(f,i=1,10)/)) r4a=TRANSFER(r4a,i4a,10)
      do i=1,5
         r4c(2*i-1)=r4b(i)
         r4c(2*i  )=i4b(i)
      enddo
      if(SIZE(PACK(r4a,r4a.ne.r4c)).eq.0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
      endif
      stop
      end
