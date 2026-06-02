#include <stdlib.h>
extern signed int v1 (signed char, unsigned short, unsigned char, signed int);
extern signed int (*v2) (signed char, unsigned short, unsigned char, signed int);
extern signed char v3 (signed int, unsigned short, signed char);
extern signed char (*v4) (signed int, unsigned short, signed char);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern signed char v7 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed short, unsigned int);
extern unsigned short v9 (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v11 (signed short, signed int, unsigned char);
extern unsigned int (*v12) (signed short, signed int, unsigned char);
extern void v13 (signed short);
extern void (*v14) (signed short);
signed short v15 (signed int);
signed short (*v16) (signed int) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (signed int, unsigned char, unsigned int);
extern signed int (*v20) (signed int, unsigned char, unsigned int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern unsigned char v27 (unsigned int, unsigned char, signed char);
extern unsigned char (*v28) (unsigned int, unsigned char, signed char);
extern unsigned short v29 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v49 = -2;
unsigned int v48 = 0U;
unsigned short v47 = 7;

signed int v23 (signed char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 7U;
signed char v52 = -2;
unsigned short v51 = 6;
trace++;
switch (trace)
{
case 4: 
return -2;
case 8: 
return -3;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v15 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -2;
unsigned short v56 = 4;
signed int v55 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
