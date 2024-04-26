      integer  (kind= 1)::i01a(5,5),i01b=1
      integer  (kind= 8)::i08a(5,5),i08b=2

      real     (kind= 4)::r04a(5,5),r04b=3.0
      real     (kind=16)::r16a(5,5),r16b=4.0

      complex  (kind= 4)::c08a(5,5),c08b=(5.0,-5.0)
      complex  (kind=16)::c32a(5,5),c32b=(6.0,-6.0)

      logical  (kind= 1)::L01a(5,5),L01b=.true.
      logical  (kind= 4)::L04a(5,5),L04b=.false.

      character(len = 5)::ch4a(5,5),ch4b='!! ??'

      data i01a/25*0/

      i01a=i01a+i01b
      i08a=0_8
      do k=1,10
         i08a=i08a+i08b
         r04a=0.0_4
         do j=1,10
            r04a=r04a+r04b
            r16a=0.0_16
         enddo
         r16a=r16a+r16b
         c08a=0.0_4
         do j=1,10
            c08a=c08a+c08b
            c32a=0.0_16
            do i=1,10
               c32a=c32a+c32b
               L01a=.true._1
            enddo
            L01a=L01a.and.L01b
            L04a=.true._4
         enddo
         L04a=L04a.neqv.L04b
         ch4a='OK NG'
      enddo
      ch4a=ch4a(:,:)(1:3)//ch4b
      if(SIZE(PACK(i01a,i01a  /=   1               )) &
        +SIZE(PACK(i08a,i08a  /=  20               )) &
        +SIZE(PACK(r04a,r04a  /=  30.0             )) &
        +SIZE(PACK(r16a,r16a  /=   4.0             )) &
        +SIZE(PACK(c08a,c08a  /=  CMPLX(50.0,-50.0))) &
        +SIZE(PACK(c32a,c32a  /=  CMPLX(60.0,-60.0))) &
        +SIZE(PACK(L01a,L01a.neqv..true.           )) &
        +SIZE(PACK(L04a,L04a.neqv..true.           )) &
        +SIZE(PACK(ch4a,ch4a  /=  'OK !!'          ))/=0) then
         write(6,*) 'NG'
         goto 10
         write(6,*) i01a*20+i08a-r04a
      else
         write(6,*) 'OK'
      endif
      stop
 10   end
      
