/*******************************************************
 * C file translated from WHIRL Thu Oct  2 15:26:28 2014
 *******************************************************/

/* Include file-level type and variable decls */
#include <alloca.h>
#include<stdio.h>
#include<math.h>
#include"type.h"
/* File-level vars and routines */
extern void print_results(char *, char, int, int, int, int, double, double, char *, unsigned int, char *, char *, char *, char *, char *, char *, char *, char *, char *);


extern void print_results(
  char * name,
  char class,
  int n1,
  int n2,
  int n3,
  int niter,
  double t,
  double mops,
  char * optype,
  unsigned int verified,
  char * npbversion,
  char * compiletime,
  char * cs1,
  char * cs2,
  char * cs3,
  char * cs4,
  char * cs5,
  char * cs6,
  char * cs7)
{
  
  register double _w2c___comma;
  char size[16LL];
  int j;
  
  printf("\n\n %s Benchmark Completed.\n", name);
  printf(" Class           =             %12c\n", (int) class);
  if((n2 | n3) == 0)
  {
    if(((int)(*name) == 69) && ((int)(*(name + 1LL)) == 80))
    {
      _w2c___comma = pow(2.0, (double)(n1));
      sprintf(size, "%15.0lf", _w2c___comma);
      j = 14;
      if((int)(size[j]) == 46)
      {
        size[j] = 32;
        j = j + -1;
      }
      size[j + 1] = 0;
      printf(" Size            =          %15s\n", size);
    }
    else
    {
      printf(" Size            =             %12d\n", n1);
    }
  }
  else
  {
    printf(" Size            =           %4dx%4dx%4d\n", n1, n2, n3);
  }
  printf(" Iterations      =             %12d\n", niter);
  printf(" Time in seconds =             %12.2lf\n", t);
  printf(" Mop/s total     =          %15.2lf\n", mops);
  printf(" Operation type  = %24s\n", optype);
  if(verified != 0U)
  {
    printf(" Verification    =             %12s\n", "SUCCESSFUL");
  }
  else
  {
    printf(" Verification    =             %12s\n", "UNSUCCESSFUL");
  }
  printf(" Version         =             %12s\n", npbversion);
  printf(" Compile date    =             %12s\n", compiletime);
  printf("\n Compile options:\n    CC           = %s\n", cs1);
  printf("    CLINK        = %s\n", cs2);
  printf("    C_LIB        = %s\n", cs3);
  printf("    C_INC        = %s\n", cs4);
  printf("    CFLAGS       = %s\n", cs5);
  printf("    CLINKFLAGS   = %s\n", cs6);
  printf("    RAND         = %s\n", cs7);
  printf("\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n\n");
  return;
} /* print_results */

