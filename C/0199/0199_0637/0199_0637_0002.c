#include <stdlib.h>
extern void v1 (unsigned char, signed char, unsigned char);
extern void (*v2) (unsigned char, signed char, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v7 (unsigned char, signed int);
extern signed short (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (unsigned char, unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char, signed int);
unsigned short v13 (signed char, unsigned char, unsigned char, signed short);
unsigned short (*v14) (signed char, unsigned char, unsigned char, signed short) = v13;
unsigned short v17 (unsigned short, unsigned char, unsigned short);
unsigned short (*v18) (unsigned short, unsigned char, unsigned short) = v17;
extern unsigned char v19 (signed short, unsigned int, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int, unsigned int);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (signed short, unsigned int);
extern signed char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 6;
unsigned int v63 = 3U;
signed int v62 = -3;

unsigned short v17 (unsigned short v65, unsigned char v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
signed int v69 = -4;
signed short v68 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed char v71, unsigned char v72, unsigned char v73, signed short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
unsigned int v76 = 5U;
signed int v75 = 0;
trace++;
switch (trace)
{
case 11: 
return v77;
default: abort ();
}
}
}
}
