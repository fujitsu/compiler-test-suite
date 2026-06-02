#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short);
extern void (*v4) (signed char, unsigned short);
extern signed char v5 (signed short, signed char, signed char, unsigned char);
extern signed char (*v6) (signed short, signed char, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (signed char, signed char);
extern signed char (*v10) (signed char, signed char);
signed short v11 (signed int, unsigned int);
signed short (*v12) (signed int, unsigned int) = v11;
extern signed short v15 (unsigned short, unsigned char, unsigned short);
extern signed short (*v16) (unsigned short, unsigned char, unsigned short);
extern signed short v17 (signed int, unsigned int, signed short);
extern signed short (*v18) (signed int, unsigned int, signed short);
extern unsigned int v19 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v20) (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (signed char, unsigned short, unsigned char);
extern signed char (*v24) (signed char, unsigned short, unsigned char);
extern signed short v25 (unsigned short, unsigned char, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int);
signed char v29 (signed short, unsigned int, signed short);
signed char (*v30) (signed short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v45 = 5U;
unsigned short v44 = 5;
signed int v43 = 3;

signed char v29 (signed short v46, unsigned int v47, signed short v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 5U;
unsigned char v50 = 2;
signed short v49 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
case 3: 
return -4;
default: abort ();
}
}
}
}

signed short v11 (signed int v52, unsigned int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -4;
signed char v55 = 0;
signed char v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
