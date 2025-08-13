       INTEGER IS1,IS2,IS3,IA1(10),IA2(10),IA3(10)
       REAL    RS1,RS2,RS3,RA1(10),RA2(10),RA3(10),res(10)
       REAL*8  DS1,DS2,DS3,DA1(10),DA2(10),DA3(10)
       DATA    IA1,IA2,IA3/30*2/,RA1,RA2,RA3/30*2./,DA1,DA2,DA3/30*2.D0/
       LOGICAL L(10)
       DATA    L/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,
     1           .TRUE.,.FALSE.,.FALSE./
       data res/8.0899474E-07,2.9990688E-02,2.9990688E-02,
     +      8.0899474E-07,8.0899474E-07,2.9990688E-02,2.9990688E-02,
     +      8.0899474E-07,2.9990688E-02,2.9990688E-02/
         DO 10 I=1,10
           IS1 = IA1(I)
           IS2 = IA2(I)
           IS3 = IA3(I)
           RS1 = RA1(I)
           RS2 = RA2(I)
           RS3 = RA3(I)
           DS1 = DA1(I)
           DS2 = DA2(I)
           DS3 = DA3(I)

           IS1 = FLOAT(IS1) + FLOAT(IS1) + FLOAT(IS1) + FLOAT(IS1)
           IS2 = FLOAT(IS2) * FLOAT(IS2) * FLOAT(IS2) * FLOAT(IS2)
           IS3 = FLOAT(IS3) - FLOAT(IS3) - FLOAT(IS3) - FLOAT(IS3)
           RS1 = SIN(RS1) + SIN(RS1) + SIN(RS1) + SIN(RS1)
           RS2 = COS(RS2) * COS(RS2) * COS(RS2) * COS(RS2)
           RS3 = DBLE(RS3) / DBLE(RS3) / DBLE(RS3) / DBLE(RS3)
           DS1 = SIN(DS1) + SIN(DS1) + SIN(DS1) + SIN(DS1)
           DS2 = SIN(DS2) * SIN(DS2) * SIN(DS2) * SIN(DS2)
           DS3 = SIN(DS3) / SIN(DS3) / SIN(DS3) / SIN(DS3)
           IF( L(I) ) THEN
             IS1 = IS1 + IS1 + IS1 + IS1
             IS2 = IS2 * IS2 * IS2 * IS2
             IS3 = IS3 - IS3 - IS3 - IS3
             RS1 = RS1 + RS1 + RS1 + RS1
             RS2 = RS2 * RS2 * RS2 * RS2
             RS3 = RS3 / RS3 / RS3 / RS3
             DS1 = DS1 + DS1 + DS1 + DS1
             DS2 = DS2 * DS2 * DS2 * DS2
             DS3 = DS3 / DS3 / DS3 / DS3
           ENDIF
           IA1(I) = IS3
           IA2(I) = IS2
           IA3(I) = IS1
           RA1(I) = RS3
           RA2(I) = RS2
           RA3(I) = RS1
           DA1(I) = DS3
           DA2(I) = DS2
           DA3(I) = DS1
   10 CONTINUE

      PRINT *,IA1,IA2,IA3
      write(6,*)
      PRINT *,RA1
      write(6,*)
      call check(RA2,res)
      write(6,*)
      PRINT *,RA3
      write(6,*)
      write(6,1) DA1,DA2,DA3
 1    format(4f20.15)
      END

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      real calc(10),res(10)
      logical ngcheck/.FALSE./
      do i=1,10
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
