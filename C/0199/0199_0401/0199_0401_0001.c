#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern unsigned int v3 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, signed int, unsigned char, signed char);
extern signed char v7 (unsigned int, signed short, unsigned char, signed int);
extern signed char (*v8) (unsigned int, signed short, unsigned char, signed int);
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
signed short v17 (signed char, signed int, signed char, unsigned int);
signed short (*v18) (signed char, signed int, signed char, unsigned int) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned int, signed short, unsigned char);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 5U;
signed short v47 = 3;
unsigned short v46 = 6;

unsigned char v23 (void)
{
{
for (;;) {
unsigned int v51 = 4U;
signed int v50 = -3;
unsigned int v49 = 6U;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}

signed short v17 (signed char v52, signed int v53, signed char v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -1;
signed short v57 = 1;
unsigned short v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
