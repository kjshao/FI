subroutine fi_a2bcd(r,p)
! compute the fundamental invariants
! atom order : A A B C D
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(10)
real(kind=8),intent(out) :: p(13)
p(1)=r(2)+r(5) 
p(2)=r(3)+r(6) 
p(3)=r(4)+r(7) 
p(4)=r(2)**2+r(5)**2 
p(5)=r(3)**2+r(6)**2 
p(6)=r(4)**2+r(7)**2 
p(7)=r(2)*r(3)+r(5)*r(6) 
p(8)=r(2)*r(4)+r(5)*r(7) 
p(9)=r(3)*r(4)+r(6)*r(7) 
p(10)=r(1)
p(11)=r(8)
p(12)=r(9)
p(13)=r(10)
end subroutine fi_a2bcd
