#include <stdlib.h>
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed char v5 (signed short, signed char, unsigned int);
extern signed char (*v6) (signed short, signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short v9 (signed short, signed int);
extern unsigned short (*v10) (signed short, signed int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern unsigned short v13 (signed short, unsigned short, signed int, unsigned int);
extern unsigned short (*v14) (signed short, unsigned short, signed int, unsigned int);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed int v19 (signed short, signed char, unsigned int);
extern signed int (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (signed char, signed char, signed int, unsigned int);
extern signed int (*v22) (signed char, signed char, signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
signed int v27 (unsigned int, unsigned short, unsigned int);
signed int (*v28) (unsigned int, unsigned short, unsigned int) = v27;
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -3;
signed char v54 = -1;
signed int v53 = 1;

signed int v27 (unsigned int v56, unsigned short v57, unsigned int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 7;
unsigned char v60 = 4;
signed char v59 = -2;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned int v64 = 0U;
unsigned short v63 = 7;
signed char v62 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
