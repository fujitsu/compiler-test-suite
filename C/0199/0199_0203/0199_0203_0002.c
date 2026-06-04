#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (unsigned char, signed int, unsigned char, signed char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, signed char);
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed int, signed char);
extern signed int (*v10) (unsigned int, signed int, signed char);
extern signed int v11 (unsigned int, unsigned short, signed short);
extern signed int (*v12) (unsigned int, unsigned short, signed short);
extern signed short v13 (unsigned int, unsigned short, signed int, unsigned int);
extern signed short (*v14) (unsigned int, unsigned short, signed int, unsigned int);
void v15 (unsigned char, unsigned int, unsigned char);
void (*v16) (unsigned char, unsigned int, unsigned char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned int v21 (signed char, unsigned int, unsigned short);
extern unsigned int (*v22) (signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (unsigned short, unsigned char, signed char, unsigned int);
signed int (*v26) (unsigned short, unsigned char, signed char, unsigned int) = v25;
extern unsigned char v27 (unsigned char, signed short, unsigned char);
extern unsigned char (*v28) (unsigned char, signed short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v72 = -2;
signed char v71 = -4;
unsigned int v70 = 0U;

signed int v25 (unsigned short v73, unsigned char v74, signed char v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 0U;
signed char v78 = -2;
signed char v77 = -4;
trace++;
switch (trace)
{
case 4: 
return -1;
case 6: 
return 2;
case 8: 
return 0;
default: abort ();
}
}
}
}

void v15 (unsigned char v80, unsigned int v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 0;
signed int v84 = 0;
unsigned char v83 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
