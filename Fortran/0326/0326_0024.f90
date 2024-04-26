module mod01
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod02
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 end subroutine
end

module mod03
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod04
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
 end subroutine
end

module mod05
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod06
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod07
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod08
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod11
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod12
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod13
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod14
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod15
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod16
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod17
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod18
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod21
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod22
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 end subroutine
end

module mod23
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod24
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
 end subroutine
end

module mod25
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod26
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod27
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod28
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod31
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod32
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod33
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod34
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod35
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod36
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod37
contains
 subroutine sub01()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

module mod38
contains
 subroutine sub01()
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp parallel
!$omp end parallel
!$omp end parallel
!$omp parallel
!$omp end parallel
 contains
  subroutine isub01()
  end subroutine
 end subroutine
end

print *,"pass"
end
