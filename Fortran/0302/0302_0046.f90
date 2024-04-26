program main
integer a(20000)
common /com/a
print *,a(1),a(19999)
end

block data blk
integer a(20000)
common /com/a
data (a(i),i=1,20000,2)/10000*1/
end
