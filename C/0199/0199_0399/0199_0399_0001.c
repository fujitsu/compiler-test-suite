#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (signed char, signed int);
extern unsigned short (*v6) (signed char, signed int);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (signed short, unsigned int, signed char);
extern signed short (*v12) (signed short, unsigned int, signed char);
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
unsigned short v15 (signed char, unsigned short);
unsigned short (*v16) (signed char, unsigned short) = v15;
extern unsigned short v17 (unsigned int, signed char, unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed char, unsigned int, signed short);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern signed int v25 (unsigned short, unsigned char, unsigned short, signed char);
extern signed int (*v26) (unsigned short, unsigned char, unsigned short, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern void v29 (unsigned char, unsigned short, unsigned int);
extern void (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v43 = -3;
unsigned short v42 = 1;
unsigned short v41 = 7;

unsigned short v15 (signed char v44, unsigned short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 3U;
unsigned int v47 = 7U;
unsigned short v46 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed short v51 = -3;
signed char v50 = -3;
signed int v49 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v52;
unsigned int v53;
signed char v54;
signed short v55;
v52 = v51 + v51;
v53 = 5U + 3U;
v54 = v50 + v50;
v55 = v11 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}
