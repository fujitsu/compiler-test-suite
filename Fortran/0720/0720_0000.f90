subroutine s1
  interface 
    subroutine sub
    end subroutine
  end interface
  procedure(sub):: sub01,sub02
  procedure(sub01),pointer:: p1
  procedure(sub02),pointer:: p2
  procedure(sub01)        :: sub11
  procedure(sub02)        :: sub12
  common n
  p1=>sub
  call p1
  if (n/=99)print *,'error'
  p1=>sub01
  call p1
  if (n/=1)print *,'error'
  p2=>sub02
  call p2
  if (n/=2)print *,'error'
  p1=>sub11
  call p1
  if (n/=11)print *,'error'
  p2=>sub12
  call p2
  if (n/=12)print *,'error'
  call sub01
  if (n/=1)print *,'error'
  call sub02
  if (n/=2)print *,'error'
  call sub11
  if (n/=11)print *,'error'
  call sub12
  if (n/=12)print *,'error'
  call sub
  if (n/=99)print *,'error'
end
call s1
print *,'pass'
end
    subroutine sub
    common n
    n=99
    return
    entry sub01
    n=01
    return
    entry sub02
    n=02
    return
    entry sub11
    n=11
    return
    entry sub12
    n=12
    return
    end subroutine

  
  
