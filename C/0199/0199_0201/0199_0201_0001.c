#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char, unsigned int, unsigned char);
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
extern signed short v5 (signed short, signed int);
extern signed short (*v6) (signed short, signed int);
extern void v7 (signed char, signed int, signed int);
extern void (*v8) (signed char, signed int, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern signed char v15 (unsigned char, signed short, unsigned int, signed int);
extern signed char (*v16) (unsigned char, signed short, unsigned int, signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (unsigned short, signed char, signed int);
extern signed char (*v24) (unsigned short, signed char, signed int);
unsigned int v25 (unsigned char, signed char, signed char, signed char);
unsigned int (*v26) (unsigned char, signed char, signed char, signed char) = v25;
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 1;
unsigned short v52 = 7;
unsigned short v51 = 3;

signed char v27 (void)
{
{
for (;;) {
signed short v56 = 3;
unsigned int v55 = 2U;
unsigned char v54 = 3;
trace++;
switch (trace)
{
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned char v57, signed char v58, signed char v59, signed char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned char v62 = 2;
signed char v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed short v66 = -1;
signed char v65 = 1;
unsigned char v64 = 6;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}
