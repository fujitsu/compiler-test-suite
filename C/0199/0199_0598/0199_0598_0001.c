#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
unsigned short v3 (unsigned int, unsigned short);
unsigned short (*v4) (unsigned int, unsigned short) = v3;
extern signed short v5 (unsigned short, signed char);
extern signed short (*v6) (unsigned short, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v10) (signed int, unsigned short, signed char, unsigned short);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned char v13 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed char v21 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed short);
extern void v23 (unsigned short, signed int, signed int, unsigned short);
extern void (*v24) (unsigned short, signed int, signed int, unsigned short);
extern signed char v25 (unsigned char, signed int, unsigned int);
extern signed char (*v26) (unsigned char, signed int, unsigned int);
extern signed short v27 (signed char, unsigned char, unsigned int);
extern signed short (*v28) (signed char, unsigned char, unsigned int);
unsigned int v29 (unsigned short, unsigned char);
unsigned int (*v30) (unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = 1;
signed short v58 = -3;
unsigned char v57 = 4;

unsigned int v29 (unsigned short v60, unsigned char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 3U;
signed short v63 = -4;
unsigned int v62 = 5U;
trace++;
switch (trace)
{
case 9: 
return 3U;
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
unsigned short v67 = 6;
signed short v66 = -4;
signed char v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 6;
signed short v71 = 2;
signed char v70 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
