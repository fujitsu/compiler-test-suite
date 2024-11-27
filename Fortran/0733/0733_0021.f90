i=0
select case(1)
case  (7:5)
 i=1
end select
if (i/=0)print *,'error-1'
select case('a')
case  ('z':'m')
 i=2
end select
if (i/=0)print *,'error-2'
select case(1)
end select
select case(1)
case default
end select
select case(1)
case default
i=2
end select
if (i/=2)print *,'error-3'
select case('1')
end select
select case('1')
case default
end select
select case('1')
case default
i=3
end select
if (i/=3)print *,'error-3'
print *,'pass'
end
