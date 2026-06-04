#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed char, unsigned short, unsigned char);
extern signed char (*v6) (signed char, unsigned short, unsigned char);
extern signed int v7 (signed short, unsigned short, signed short);
extern signed int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char, signed char, signed short);
extern unsigned int (*v14) (unsigned char, signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int, signed short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = 0;
unsigned char v110 = 2;
unsigned char v109 = 7;

signed char v29 (unsigned short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -2;
signed short v114 = -2;
signed int v113 = -1;
trace++;
switch (trace)
{
case 4: 
return 1;
case 6: 
return -3;
case 8: 
return 0;
default: abort ();
}
}
}
}
