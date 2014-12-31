/*******************************************************
 * C file translated from WHIRL Sun Sep 28 20:30:08 2014
 *******************************************************/

/* Include file-level type and variable decls */
#include <alloca.h>
#include"wtime.h"
#include<stdlib.h>
/* File-level vars and routines */
static double elapsed_time(void);

extern void timer_clear(int);

static double elapsed[64LL];

extern void timer_start(int);

static double start[64LL];

extern void timer_stop(int);

extern double timer_read(int);


static double elapsed_time()
{
  
  double t;
  
  wtime_(&t);
  return t;
} /* elapsed_time */


extern void timer_clear(
  int n)
{
  
  
  elapsed[n] = 0.0;
  return;
} /* timer_clear */


extern void timer_start(
  int n)
{
  
  register double _w2c___comma;
  
  _w2c___comma = elapsed_time();
  start[n] = _w2c___comma;
  return;
} /* timer_start */


extern void timer_stop(
  int n)
{
  
  register double _w2c___comma;
  double t;
  double now;
  
  _w2c___comma = elapsed_time();
  now = _w2c___comma;
  t = now - start[n];
  elapsed[n] = elapsed[n] + t;
  return;
} /* timer_stop */


extern double timer_read(
  int n)
{
  
  
  return elapsed[n];
} /* timer_read */

