#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
extern unsigned short v7 (signed short, signed short, signed char, signed int);
extern unsigned short (*v8) (signed short, signed short, signed char, signed int);
signed char v9 (unsigned int, signed int);
signed char (*v10) (unsigned int, signed int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, signed short, signed short, signed int);
extern void (*v22) (unsigned int, signed short, signed short, signed int);
extern unsigned char v23 (signed short, signed char, signed char);
extern unsigned char (*v24) (signed short, signed char, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (signed int, signed int);
extern void (*v28) (signed int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v93 = 1;
unsigned int v92 = 1U;
unsigned short v91 = 1;

signed char v9 (unsigned int v94, signed int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 0;
unsigned short v97 = 5;
unsigned int v96 = 3U;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 0;
unsigned char v101 = 1;
unsigned char v100 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
