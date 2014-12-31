/*******************************************************
 * C file translated from WHIRL Thu Oct  2 15:26:29 2014
 *******************************************************/

/* Include file-level type and variable decls */
#include <alloca.h>
#include<stdio.h>
#include<math.h>
/* File-level vars and routines */
extern double randlc(double *, double);

extern void vranlc(int, double *, double, double *);


extern double randlc(
  double * x,
  double a)
{
  
  double r23;
  double r46;
  double t23;
  double t46;
  double t1;
  double t2;
  double t3;
  double t4;
  double a1;
  double a2;
  double x1;
  double x2;
  double z;
  double r;
  
  r23 = 1.1920928955078125e-07;
  r46 = 1.42108547152020037174e-14;
  t23 = 8.388608e+06;
  t46 = 7.0368744177664e+13;
  t1 = a * 1.1920928955078125e-07;
  a1 = (double)(trunc(t1));
  a2 = a + (a1 * -8.388608e+06);
  t1 = *x * 1.1920928955078125e-07;
  x1 = (double)(trunc(t1));
  x2 = *x + (x1 * -8.388608e+06);
  t1 = (a1 * x2) + (a2 * x1);
  t2 = (double)(trunc(t1 * 1.1920928955078125e-07));
  z = t1 + (t2 * -8.388608e+06);
  t3 = (a2 * x2) + (z * 8.388608e+06);
  t4 = (double)(trunc(t3 * 1.42108547152020037174e-14));
  * x = t3 + (t4 * -7.0368744177664e+13);
  r = *x * 1.42108547152020037174e-14;
  return r;
} /* randlc */


extern void vranlc(
  int n,
  double * x,
  double a,
  double * y)
{
  
  double r23;
  double r46;
  double t23;
  double t46;
  double t1;
  double t2;
  double t3;
  double t4;
  double a1;
  double a2;
  double x1;
  double x2;
  double z;
  int i;
  
  r23 = 1.1920928955078125e-07;
  r46 = 1.42108547152020037174e-14;
  t23 = 8.388608e+06;
  t46 = 7.0368744177664e+13;
  t1 = a * 1.1920928955078125e-07;
  a1 = (double)(trunc(t1));
  a2 = a + (a1 * -8.388608e+06);
  i = 0;
  while(n > i)
  {
    _514 :;
    t1 = *x * 1.1920928955078125e-07;
    x1 = (double)(trunc(t1));
    x2 = *x + (x1 * -8.388608e+06);
    t1 = (a1 * x2) + (a2 * x1);
    t2 = (double)(trunc(t1 * 1.1920928955078125e-07));
    z = t1 + (t2 * -8.388608e+06);
    t3 = (a2 * x2) + (z * 8.388608e+06);
    t4 = (double)(trunc(t3 * 1.42108547152020037174e-14));
    * x = t3 + (t4 * -7.0368744177664e+13);
    * (y + (unsigned long long)((unsigned long long) i)) = *x * 1.42108547152020037174e-14;
    i = i + 1;
    _258 :;
  }
  goto _770;
  _770 :;
  return;
} /* vranlc */

