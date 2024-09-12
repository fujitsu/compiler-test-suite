              MODULE m1
            INTEGER,TARGET::tar1 =41
           TYPE t1
            INTEGER :: x11=11
            INTEGER :: x00=22
           INTEGER ,POINTER::x44=>tar1
              CONTAINS
            END TYPE
            CONTAINS
            SUBROUTINE   prc(x,y)
            CLASS(t1),INTENT(INOUT)::x
             CLASS(t1),INTENT(IN)::y
          x%x11 = x%x11+y%x11
              x%x00 = x%x00+y%x00
              x%x44 = x%x44
         END SUBROUTINE
         END MODULE
         MODULE m2
          USE m1
          TYPE t2
          integer::xx33=22
              real::yyy=11
            TYPE(t1):: x22
            END TYPE
            END MODULE
    module m3
      use m2
         TYPE(t2),allocatable:: v34(:,:)
          TYPE(t2)::v33(2,3)
    contains
      SUBROUTINE s1
          v33%x22%x11=45
             v33%x22%x00=46
              v33%xx33=34
           v33%yyy=36
        allocate(v34(2,2))
    end
   end
   module m4
         use m3
    contains
           SUBROUTINE s2
             v34= v33
              if(any(v34%xx33.ne.34))print*,"107"
            if(any(v34%yyy.ne.36))print*,"108"
            if(any(v34%x22%x11.ne.45))print*,"101",v34%x22%x11
           if(any(v34%x22%x00.ne.46))print*,"102",v34%x22%x00
          if(v34(1,1)%x22%x44.ne.41)print*,"103"
      end
    end
 use m4
    call s1
    call s2
         print*,"pass"
 END
