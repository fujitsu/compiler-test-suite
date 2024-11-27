      call s1
      print *,'pass'
      end
      subroutine s1
      type a
       integer                     :: level 
       integer,pointer,dimension(:):: value
       type (a),pointer,dimension(:):: next_a
       type (a),pointer             :: next_s
      endtype
      type(a),target::ta
      type(a),pointer::tb
      integer,target,allocatable,dimension(:)::a_value
      integer,pointer::ta_value(:),tb_value(:)
      integer,pointer::ta_level,tb_level
      type(a),pointer::ta_next_a(:),tb_next_a(:),&
     &         ta_next_s,tb_next_s
      integer,pointer::ta_next_s_value(:),tb_next_s_value(:)
      type(a),pointer:: ta_next_s_next_a(:), &
     &          tb_next_s_next_a(:)
      type(a),pointer:: ta_next_s_next_s,&
     &         tb_next_s_next_s
      integer,pointer:: ta_next_s_next_s_level 
      integer,pointer:: tb_next_s_next_s_level 
      integer,pointer:: ta_next_s_next_s_value(:)
      integer,pointer::  tb_next_s_next_s_value(:)
      type(a),pointer::  ta_next_s_next_s_next_a(:),&
     &                   tb_next_s_next_s_next_a(:)
      integer,pointer:: ta_next_s_next_s_next_a_level(:),&
     &                  tb_next_s_next_s_next_a_level(:)
      type(a),pointer:: ta_next_s_next_s_next_s
      type(a),pointer:: tb_next_s_next_s_next_s
      integer,pointer:: ta_next_s_next_s_next_s_level
      integer,pointer:: tb_next_s_next_s_next_s_level
      allocate (a_value(-2:-1))
      a_value(-2)= 1
      a_value(-1)= 2
      allocate (tb)
      ta%level = 1 
      tb%level = 1 
      allocate (ta%value(2:3),tb%value(2:3))
      ta%value= a_value
      tb%value= a_value
      allocate (ta%next_a(2:3),tb%next_a(2:3))
      ta%next_a%level = 2
      tb%next_a%level = 2
      allocate (ta%next_s,tb%next_s)
      ta%next_s%level = 2       
      tb%next_s%level = 2       
      allocate (ta%next_s%value(2:3),tb%next_s%value(2:3))
      ta%next_s%value= a_value+10
      tb%next_s%value= a_value+10
      allocate (ta%next_s%next_a(2:3),&
     &          tb%next_s%next_a(2:3))
      ta%next_s%next_a%level = 3
      tb%next_s%next_a%level = 3
      allocate (ta%next_s%next_s,tb%next_s%next_s)
      ta%next_s%next_s%level = 3       
      tb%next_s%next_s%level = 3       
      allocate (ta%next_s%next_s%value(2:3),&
     &          tb%next_s%next_s%value(2:3))
      ta%next_s%next_s%value= a_value+100
      tb%next_s%next_s%value= a_value+100
      allocate (ta%next_s%next_s%next_a(2:3),&
     &          tb%next_s%next_s%next_a(2:3))
      ta%next_s%next_s%next_a%level = 4
      tb%next_s%next_s%next_a%level = 4
      allocate (ta%next_s%next_s%next_s,&
     &          tb%next_s%next_s%next_s)
      ta%next_s%next_s%next_s%level = 4
      tb%next_s%next_s%next_s%level = 4
      ta_level=>ta%level
      tb_level=>ta%level
      call chk(ta%level,1,009)
      call chk(ta_level,1,010)
      call chk(ta%level,1,011)
      call chk(ta_level,1,012)
      ta_value=>ta%value
      tb_value=>tb%value
      call chk(ta%value(2),1,001)
      call chk(ta%value(3),2,002)
      call chk(ta_value(2),1,003)
      call chk(ta_value(3),2,004)
      call chk(tb%value(2),1,013)
      call chk(tb%value(3),2,014)
      call chk(tb_value(2),1,015)
      call chk(tb_value(3),2,016)
      ta_next_a=>ta%next_a
      tb_next_a=>tb%next_a
      call chk(ta%next_a(2)%level,2,005)
      call chk(ta%next_a(3)%level,2,006)
      call chk(tb%next_a(2)%level,2,007)
      call chk(tb%next_a(3)%level,2,008)
      call chk(ta_next_a(2)%level,2,017)
      call chk(ta_next_a(3)%level,2,018)
      call chk(tb_next_a(2)%level,2,019)
      call chk(tb_next_a(3)%level,2,020)
      ta_next_s=>ta%next_s
      tb_next_s=>tb%next_s
      call chk(ta%next_s%level,2,21)     
      call chk(ta_next_s%level,2,22)     
      call chk(tb%next_s%level,2,23)     
      call chk(tb_next_s%level,2,24)     
      ta_next_s_value=>ta%next_s%value(:)
      call chk(ta%next_s%value(2),11,25)
      call chk(ta%next_s%value(3),12,26)
      call chk(tb%next_s%value(2),11,27)
      call chk(tb%next_s%value(3),12,28)
      call chk(ta_next_s_value(1),11,29)
      call chk(ta_next_s_value(2),12,30)
      ta_next_s_value=>ta%next_s%value
      tb_next_s_value=>tb%next_s%value
      call chk(ta_next_s_value(2),11,33)
      call chk(ta_next_s_value(3),12,34)
      call chk(tb_next_s_value(2),11,35)
      call chk(tb_next_s_value(3),12,36)
      ta_next_s_next_a=>ta%next_s%next_a
      tb_next_s_next_a=>tb%next_s%next_a
      call chk(ta%next_s%next_a(2)%level,3,37)
      call chk(ta%next_s%next_a(3)%level,3,38)
      call chk(ta_next_s_next_a(2)%level,3,39)
      call chk(ta_next_s_next_a(3)%level,3,40)
      call chk(tb%next_s%next_a(2)%level,3,37)
      call chk(tb%next_s%next_a(3)%level,3,38)
      call chk(tb_next_s_next_a(2)%level,3,39)
      call chk(tb_next_s_next_a(3)%level,3,40)
      ta_next_s_next_s=>ta%next_s%next_s
      tb_next_s_next_s=>tb%next_s%next_s
      call chk(ta%next_s%next_s%level,3 ,41)      
      call chk(tb%next_s%next_s%level,3 ,42)      
      call chk(ta_next_s_next_s%level,3 ,43)      
      call chk(tb_next_s_next_s%level,3 ,44)      
      ta_next_s_next_s_level =>ta%next_s%next_s%level
      tb_next_s_next_s_level              =>ta%next_s%next_s%level
      call chk(ta_next_s_next_s_level,3 ,45)      
      call chk(tb_next_s_next_s_level,3 ,46)      
      ta_next_s_next_s_value =>           ta%next_s%next_s%value
      tb_next_s_next_s_value =>           tb%next_s%next_s%value
      call chk(ta%next_s%next_s%value(2),101,47)
      call chk(ta%next_s%next_s%value(3),102,48)
      call chk(tb%next_s%next_s%value(2),101,49)
      call chk(tb%next_s%next_s%value(3),102,50)
      call chk(ta_next_s_next_s_value(2),101,51)
      call chk(ta_next_s_next_s_value(3),102,52)
      call chk(tb_next_s_next_s_value(2),101,53)
      call chk(tb_next_s_next_s_value(3),102,54)
      ta_next_s_next_s_next_a=>           ta%next_s%next_s%next_a
      tb_next_s_next_s_next_a=>           tb%next_s%next_s%next_a
      call chk(ta%next_s%next_s%next_a(2)%level,4,55)
      call chk(ta%next_s%next_s%next_a(3)%level,4,56)
      call chk(tb%next_s%next_s%next_a(2)%level,4,57)
      call chk(tb%next_s%next_s%next_a(3)%level,4,58)
      call chk(ta_next_s_next_s_next_a(2)%level,4,59)
      call chk(ta_next_s_next_s_next_a(3)%level,4,60)
      call chk(tb_next_s_next_s_next_a(2)%level,4,61)
      call chk(tb_next_s_next_s_next_a(3)%level,4,62)
      ta_next_s_next_s_next_a_level => ta%next_s%next_s%next_a%level 
      tb_next_s_next_s_next_a_level => ta%next_s%next_s%next_a%level 
      call chk(ta_next_s_next_s_next_a_level(1),4,63)
      call chk(ta_next_s_next_s_next_a_level(2),4,64)
      call chk(tb_next_s_next_s_next_a_level(1),4,65)
      call chk(tb_next_s_next_s_next_a_level(2),4,66)
      ta_next_s_next_s_next_s => ta%next_s%next_s%next_s ;
      tb_next_s_next_s_next_s => tb%next_s%next_s%next_s
      call chk(ta%next_s%next_s%next_s%level,4,67)
      call chk(tb%next_s%next_s%next_s%level,4,68)
      call chk(ta_next_s_next_s_next_s%level,4,69)
      call chk(tb_next_s_next_s_next_s%level,4,70)
      ta_next_s_next_s_next_s_level => ta%next_s%next_s%next_s%level
      tb_next_s_next_s_next_s_level => ta%next_s%next_s%next_s%level
      call chk(ta_next_s_next_s_next_s_level,4,71)
      call chk(tb_next_s_next_s_next_s_level,4,72)
      deallocate (ta%next_s%next_s%next_s, tb%next_s%next_s%next_s)
      nullify (ta%next_s%next_s%next_s, tb%next_s%next_s%next_s)
      deallocate (ta%next_s%next_s%next_s, tb%next_s%next_s%next_s,stat=ix)
      if (ix==0) write(6,*) "NG"
      nullify (ta%next_s%next_s%next_s, tb%next_s%next_s%next_s)
      deallocate (ta%next_s%next_s%value, tb%next_s%next_s%value)
      nullify (ta%next_s%next_s%value, tb%next_s%next_s%value)
      deallocate (ta%next_s%next_a, tb%next_s%next_a)
      nullify (ta%next_s%next_a, tb%next_s%next_a)
      deallocate (ta%next_s%next_s,tb%next_s%next_s)
      nullify (ta%next_s%next_s,tb%next_s%next_s)
      deallocate (ta%next_s%value,tb%next_s%value)
      nullify (ta%next_s%value,tb%next_s%value)
      deallocate (ta%next_s,tb%next_s)
      nullify (ta%next_s,tb%next_s)
      deallocate (ta%next_a,tb%next_a)
      nullify (ta%next_a,tb%next_a)
      deallocate (ta%value,tb%value)
      nullify (ta%value,tb%value)
      deallocate (tb)
      nullify (tb)
      end 
      subroutine err(i,j,k)
      write(6,*) "NG"
      print *,'error code :',i,j,k
      end
      subroutine chk(i,j,k)
      if (i/=j) call err(i,j,k)
      end
      subroutine chka(i,j,k)
      integer i(2)
      if (i(1)/=j) call err(i,j,k)
      if (i(2)/=j) call err(i,j,k)
      end
