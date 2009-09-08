CCPW
C     CALCULATE SPECIFIC HEAT FOR WATER VAPOR
      SUBROUTINE CPW(P,T,F,W,CPWX)
      DIMENSION XT(7)
      IF(T-400.)1,2,2
1     TX=400.
      GO TO 5
2     IF(3000.-T)3,4,4
3     TX=3000.
      GO TO 5
4     TX=T
5     XT(1)=TX/1000.
      DO 6 I=2,7
6     XT(I)=XT(I-1)*XT(1)
      CPWX=4.5728850E-01+9.7007556E-02*XT(1)+1.6536409E-01
     1*XT(2)-4.1138066E-02*XT(3)-2.6979575E-02*XT(4)+2.2619243E-02
     2*XT(5)-6.2706207E-03*XT(6)+6.2246710E-04*XT(7)
      RETURN
      END
