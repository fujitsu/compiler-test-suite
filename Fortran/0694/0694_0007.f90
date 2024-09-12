  module  particleModule
    type particleType
       logical initialized
       integer,allocatable::qNode(:,:),qEdge(:,:)
    end type
    type(particleType):: particles(2)
    contains
    subroutine particle_clear(ave)
    type(particleType) :: ave
    end subroutine
    subroutine particle_plus(ave,particles)
    type(particleType) :: ave,particles
    end subroutine
  end
  subroutine sum_particles(ave)
    use particleModule
    type(particleType) :: ave
    integer :: n
    integer,dimension(2) :: isn,ise
    real(8), dimension(:,:), allocatable :: buffN,buffE
    if(.not.ave%initialized) then
      isn = shape(particles(1)%qNode)
      ise = shape(particles(1)%qEdge)
      allocate(ave%qNode(isn(1),isn(2)),ave%qEdge(ise(1),ise(2)))
      ave%initialized = .true.
    endif
    call particle_clear(ave)
    isn = shape(particles(1)%qNode)
    ise = shape(particles(1)%qEdge)
    allocate(buffN(isn(1),isn(2)), buffE(ise(1),ise(2)))
    buffN = 0.0
    buffE = 0.0
 !$omp parallel default(none) &
 !$omp private(n) &
 !$omp shared(particles,numberOfParticlesPerProcess, &
 !$omp        buffN,buffE)
 !$omp do reduction(+:buffN,buffE)
    do n=1,numberOfParticlesPerProcess
      buffN = buffN + particles(n)%qNode
      buffE = buffE + particles(n)%qEdge
    enddo
 !$omp end do
 !$omp end parallel
    ave%qNode = buffN
    ave%qEdge = buffE
    deallocate(buffN,buffE)
  end subroutine sum_particles
  print *,'pass'
  end
