 call s1
 print *,'pass'
 end
 subroutine s1
      character*25 cim020(6)
      character*3  cim003
      character*9 cim009
      character*11 cim011
      namelist /abcde/ cim003,cim009,cim011
      cim020(1)= ' '
      cim020(2)= ' '
      cim020(3)= ' '
      cim020(4)= ' '
      cim020(5)= ' '
      cim020(6)= ' '
      cim003 = '123'
      cim009 = 'A12345678'
      cim011 = 'C  12  34''56789  '
      write(1,*) 'cim011=',cim011
      write(2,abcde)
      write(cim020,abcde)
      write(1,*) '*',cim020(1),'*'
      write(1,*) '*',cim020(2),'*'
      write(1,*) '*',cim020(3),'*'
      write(1,*) '*',cim020(4),'*'
      write(1,*) '*',cim020(5),'*'
      write(1,*) '*',cim020(6),'*'
      if('*'//cim020(1)//'*'.ne."* &abcde                  *")write(6,*) "NG"
      if('*'//cim020(2)//'*'.ne."* cim003='123',cim009='A12*")write(6,*) "NG"
      if('*'//cim020(3)//'*'.ne."*345678',cim011='C  12  34*")write(6,*) "NG"
      if('*'//cim020(4)//'*'.ne."*''5'                     *")write(6,*) "NG"
      if('*'//cim020(5)//'*'.ne."* &end                    *")write(6,*) "NG"
      if('*'//cim020(6)//'*'.ne."*                         *")write(6,*) "NG"
      end
