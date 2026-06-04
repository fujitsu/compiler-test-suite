#include <stdlib.h>
extern unsigned int v3 (unsigned int, signed int, unsigned int);
extern unsigned int (*v4) (unsigned int, signed int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern signed char v7 (signed short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (signed short, signed short, unsigned char, unsigned char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned short, signed short, signed int, signed int);
extern void (*v12) (unsigned short, signed short, signed int, signed int);
unsigned short v13 (unsigned char, unsigned char);
unsigned short (*v14) (unsigned char, unsigned char) = v13;
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed char);
extern unsigned int (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern unsigned short v29 (signed char, unsigned int, unsigned short);
extern unsigned short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = -1;
signed char v112 = 0;
unsigned short v111 = 0;

signed int v27 (unsigned char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 5;
signed char v116 = -2;
unsigned int v115 = 3U;
trace++;
switch (trace)
{
case 6: 
return -3;
case 8: 
return 3;
case 10: 
return -3;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v118, unsigned char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 2;
signed char v121 = 2;
unsigned char v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
