#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed int v3 (signed int, signed int);
extern signed int (*v4) (signed int, signed int);
extern void v5 (signed short, unsigned char);
extern void (*v6) (signed short, unsigned char);
unsigned short v7 (unsigned short, signed int, signed int);
unsigned short (*v8) (unsigned short, signed int, signed int) = v7;
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char, unsigned char);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed int);
extern signed short (*v22) (unsigned short, unsigned char, signed int);
void v23 (unsigned short, unsigned short, unsigned char);
void (*v24) (unsigned short, unsigned short, unsigned char) = v23;
extern signed int v25 (signed short, signed char, signed short);
extern signed int (*v26) (signed short, signed char, signed short);
extern signed int v27 (unsigned int, signed int, signed int);
extern signed int (*v28) (unsigned int, signed int, signed int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 4;
signed int v81 = 0;
unsigned int v80 = 0U;

unsigned char v29 (void)
{
{
for (;;) {
unsigned int v85 = 3U;
signed short v84 = -2;
signed int v83 = 3;
trace++;
switch (trace)
{
case 8: 
return 1;
case 10: 
return 1;
default: abort ();
}
}
}
}

void v23 (unsigned short v86, unsigned short v87, unsigned char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 2;
signed short v90 = 2;
signed int v89 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v92, signed int v93, signed int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 5;
signed char v96 = 0;
signed short v95 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
