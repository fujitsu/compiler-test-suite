#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (unsigned char, signed short);
signed int (*v4) (unsigned char, signed short) = v3;
unsigned char v5 (unsigned int, unsigned int);
unsigned char (*v6) (unsigned int, unsigned int) = v5;
extern unsigned char v7 (signed short, unsigned short, unsigned char);
extern unsigned char (*v8) (signed short, unsigned short, unsigned char);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed char v13 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (unsigned short, signed int);
extern signed int (*v24) (unsigned short, signed int);
extern signed int v25 (unsigned char, unsigned char);
extern signed int (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (unsigned int, signed char, unsigned short);
extern unsigned char (*v30) (unsigned int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 3;
signed short v71 = 1;
signed short v70 = -3;

signed char v9 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 1;
unsigned int v75 = 7U;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
unsigned int v80 = 2U;
unsigned short v79 = 1;
trace++;
switch (trace)
{
case 7: 
return 1;
case 9: 
return 0;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v82, signed short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -1;
signed char v85 = -4;
signed char v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
