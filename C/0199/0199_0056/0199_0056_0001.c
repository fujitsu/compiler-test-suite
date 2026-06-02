#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern void v5 (unsigned short, unsigned int);
extern void (*v6) (unsigned short, unsigned int);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern void v13 (signed short, signed int, signed char);
extern void (*v14) (signed short, signed int, signed char);
extern void v15 (signed int, signed int, unsigned char, signed char);
extern void (*v16) (signed int, signed int, unsigned char, signed char);
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (signed int, signed int, unsigned int);
extern unsigned char (*v24) (signed int, signed int, unsigned int);
signed int v25 (signed char);
signed int (*v26) (signed char) = v25;
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern unsigned short v29 (unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = -2;
unsigned char v57 = 7;
signed char v56 = -4;

unsigned char v27 (unsigned int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = -1;
unsigned int v61 = 0U;
signed int v60 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -2;
unsigned short v65 = 0;
signed short v64 = 2;
trace++;
switch (trace)
{
case 2: 
return -1;
default: abort ();
}
}
}
}
