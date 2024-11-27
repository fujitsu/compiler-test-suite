integer   :: i
character :: c, c2
logical   :: l

i = 1
c = 'a'
c2 = 'z'
l = .true.

select case (i)
 case (merge(101, 102, .true.):                      ) 
  print *,'101 over'
 case (                       :merge(-2, -3 , .true.)) 
  print*, '-2  under'
 case (merge(0,   1,   .true.):merge(99, 100, .true.)) 
  print*, '0 - 99'
 case (merge(100, 99, .true.))                         
  print *,'100'
 case default 
  print*, "-1"
end select

select case (c)
 case (merge('a', 'b', .true.))
  print *,'a or b'
 case default
  print *,'unknown'
end select

select case (c2)
 case (merge('a', 'b', .true.))
  print *,'a or b'
 case default
  print *,'unknown'
end select

select case (l)
 case (merge(.true., .true., .true.))
  print *,'true'
 case default
  print *,'unknown'
end select

end
