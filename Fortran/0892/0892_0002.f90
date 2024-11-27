integer::ii=1
block
selectcase(ii)
case(1)
x1:block
print*,"1"
goto 10
end block x1
case(2)
y1:block
print*,"2"
end block y1
10 end select
end block
end

