READ (IUN, '(1X, G14.7)', IOSTAT = IOS) X
read (5) x
write (IUN, '(1X, G14.7)', IOSTAT = IOS) X
write (6) x
READ (IUN, '(1X, G14.7)', IOSTAT = IOS), X
read (5), x
write (IUN, '(1X, G14.7)', IOSTAT = IOS), X
write (6), x
end
