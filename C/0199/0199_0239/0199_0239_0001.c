#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
void v11 (signed short);
void (*v12) (signed short) = v11;
signed char v13 (unsigned short, unsigned int);
signed char (*v14) (unsigned short, unsigned int) = v13;
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed int, unsigned int, signed int);
extern void (*v28) (unsigned short, signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -3;
signed char v69 = 2;
signed char v68 = 2;

signed char v13 (unsigned short v71, unsigned int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 7U;
signed char v74 = 0;
signed short v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 2U;
signed char v78 = 0;
signed int v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 7;
unsigned int v82 = 3U;
signed int v81 = -2;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}
