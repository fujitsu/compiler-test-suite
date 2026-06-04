#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, unsigned short);
extern signed short (*v2) (signed int, unsigned short, unsigned short);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned int, signed char);
extern unsigned int (*v14) (unsigned int, signed char);
extern unsigned int v15 (signed int, signed short, unsigned int, unsigned short);
extern unsigned int (*v16) (signed int, signed short, unsigned int, unsigned short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned short v19 (unsigned short, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char, unsigned int, signed short);
extern signed short (*v22) (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern unsigned int v25 (signed char, unsigned char, unsigned int, signed short);
extern unsigned int (*v26) (signed char, unsigned char, unsigned int, signed short);
unsigned int v27 (signed int, unsigned short, unsigned short);
unsigned int (*v28) (signed int, unsigned short, unsigned short) = v27;
signed short v29 (signed int, unsigned char);
signed short (*v30) (signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 6;
unsigned short v68 = 2;
unsigned char v67 = 0;

signed short v29 (signed int v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 1U;
signed int v73 = -1;
signed int v72 = 0;
trace++;
switch (trace)
{
case 7: 
return -3;
default: abort ();
}
}
}
}

unsigned int v27 (signed int v75, unsigned short v76, unsigned short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -2;
signed short v79 = -4;
signed short v78 = -3;
trace++;
switch (trace)
{
case 9: 
return 1U;
default: abort ();
}
}
}
}
