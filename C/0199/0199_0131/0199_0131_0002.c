#include <stdlib.h>
extern signed char v3 (unsigned short, unsigned char, signed char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned int v5 (signed char, signed int, unsigned char, signed int);
extern unsigned int (*v6) (signed char, signed int, unsigned char, signed int);
extern unsigned int v7 (unsigned char, unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern signed int v13 (unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, unsigned char);
extern signed int v15 (signed short, unsigned int, unsigned int);
extern signed int (*v16) (signed short, unsigned int, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
extern signed char v21 (signed short);
extern signed char (*v22) (signed short);
signed short v23 (void);
signed short (*v24) (void) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 4;
unsigned short v72 = 4;
signed char v71 = 2;

signed char v25 (void)
{
{
for (;;) {
unsigned short v76 = 5;
signed char v75 = 2;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed char v79 = 2;
unsigned int v78 = 4U;
signed char v77 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed short v80;
unsigned int v81;
unsigned int v82;
signed int v83;
v80 = -3 - -3;
v81 = v78 + 0U;
v82 = v78 - 5U;
v83 = v15 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
