#include <stdlib.h>
extern signed char v1 (signed char, signed char, signed char);
extern signed char (*v2) (signed char, signed char, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned char v7 (signed char, unsigned short, signed char);
extern unsigned char (*v8) (signed char, unsigned short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned char v11 (signed char, signed int, signed char);
extern unsigned char (*v12) (signed char, signed int, signed char);
extern unsigned char v13 (unsigned int, signed short, unsigned int);
extern unsigned char (*v14) (unsigned int, signed short, unsigned int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v21 (signed int, signed short, unsigned int);
extern unsigned char (*v22) (signed int, signed short, unsigned int);
signed int v23 (signed char, unsigned char);
signed int (*v24) (signed char, unsigned char) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned short v27 (unsigned int, signed int, unsigned char, unsigned short);
unsigned short (*v28) (unsigned int, signed int, unsigned char, unsigned short) = v27;
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v51 = 0;
unsigned int v50 = 5U;
signed int v49 = 2;

unsigned short v27 (unsigned int v52, signed int v53, unsigned char v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 5;
signed short v57 = 1;
unsigned short v56 = 2;
trace++;
switch (trace)
{
case 10: 
return 7;
default: abort ();
}
}
}
}

signed int v23 (signed char v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 4;
unsigned int v62 = 5U;
unsigned char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
