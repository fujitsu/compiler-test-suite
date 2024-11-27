block data bk_4
common /com4/aa,gg
data aa,gg/1,2/
end

module modb
integer ::modb_1
contains
  subroutine sub_modb
  common /com4/aa,gg
  write(11,*)'sub_modb',aa,gg
     write(12,*)aa,gg
  end subroutine
end

module moda
use modb
integer ::moda_1
contains
  subroutine sub_moda
   common /com1/aa,gg
  write(11,*)'sub_moda',aa,gg
     write(12,*)aa,gg
  call sub_modb
  call sub_moda_in
  contains
   subroutine sub_moda_in
     common /com3/aa,gg
     write(11,*)'sub_moda_in'
     write(12,*)aa,gg
   end subroutine
  end subroutine
end

block data bk_3
common /com3/aa,gg
data aa,gg/1,2/
end

subroutine sub
use moda
common /com2/aa,gg
integer ::sub_1
write(11,*)'sub',aa,gg
     write(12,*)aa,gg
call sub_moda
end

program main
integer ::main_
write(11,*)'main'
call sub
rewind 12
read(12,*) a,b;if (any(abs((/a,b/)-(/11,12/))>0.0001))write(6,*) "NG"
read(12,*) a,b;if (any(abs((/a,b/)-(/1,2/))>0.0001))write(6,*) "NG"
read(12,*) a,b;if (any(abs((/a,b/)-(/1,2/))>0.0001))write(6,*) "NG"
read(12,*) a,b;if (any(abs((/a,b/)-(/1,2/))>0.0001))write(6,*) "NG"
print *,'pass'
end

block data bk_1
common /com1/aa,gg
data aa,gg/1,2/
end

block data bk_2
common /com2/aa,gg
data aa,gg/11,12/
end
